SELECT p.Product_ID AS Quick_Find, p.Product_Title, SUM(ol.Quantity) AS Quantity, DATE_FORMAT(ol.Created_On, '%Y %m') AS Month
FROM product AS p
INNER JOIN supplier_product AS sp ON sp.Product_ID=p.Product_ID AND sp.Supplier_ID=35

LEFT JOIN (
  SELECT ol.Product_ID, SUM(ol.Quantity) AS Quantity, ol.Created_On, ol.Despatch_ID
  FROM (
    SELECT ol.Product_ID, SUM(ol.Quantity) AS Quantity, o.Created_On, ol.Despatch_ID
    FROM order_line AS ol
    INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID
    WHERE ol.Despatch_ID > 0 AND ol.Parent_ID=0
    GROUP BY ol.Product_ID, o.Created_On

    UNION ALL

    SELECT ol2.Product_ID, SUM(ol.Quantity*ol2.Quantity) AS Quantity, o.Created_On, ol.Despatch_ID
    FROM order_line AS ol
    INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID
    INNER JOIN order_line AS ol2 ON ol2.Parent_ID=ol.Order_Line_ID
    WHERE ol2.Despatch_ID > 0
    GROUP BY ol2.Product_ID, o.Created_On
  ) AS ol

  GROUP BY ol.Product_ID, ol.Created_On

) AS ol ON ol.Product_ID=p.Product_ID

WHERE ol.Created_On > ADDDATE(NOW(), INTERVAL -12 MONTH)
GROUP BY ol.Product_ID, Month
ORDER BY ol.Product_ID, Month DESC;

#####

$records = DataRecord::fetchRecords(sprintf('SELECT p.Product_ID, p.Product_Title, p.SKU, p.Discontinued, GREATEST(COALESCE(SUM(ws.Quantity_In_Stock), 0) - COALESCE(a.Allocated_Stock, 0), 0) AS Quantity_In_Stock
  FROM product AS p
  LEFT JOIN warehouse_stock AS ws ON ws.Product_ID=p.Product_ID
  LEFT JOIN (

    SELECT u.Product_ID, SUM(u.Quantity) AS Allocated_Stock
    FROM (

      SELECT ol.Product_ID, SUM(ol.Quantity) AS Quantity
      FROM order_line AS ol
      INNER JOIN warehouse AS w ON w.Warehouse_ID=ol.Despatch_From_ID AND w.stockAvailable=TRUE AND w.Type=\'B\'
      INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID AND o.Status IN (\'Reviewing\', \'Pending\', \'Awaiting Packing\', \'Packing\', \'Awaiting Despatch\', \'Partially Despatched\') AND o.OwnedBy=0
      WHERE ol.Despatch_ID=0 AND ol.Parent_ID=0
      GROUP BY ol.Product_ID

      UNION ALL

      SELECT ol2.Product_ID, SUM(ol.Quantity*ol2.Quantity) AS Quantity
      FROM order_line AS ol
      INNER JOIN warehouse AS w ON w.Warehouse_ID=ol.Despatch_From_ID AND w.stockAvailable=TRUE AND w.Type=\'B\'
      INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID AND o.Status IN (\'Reviewing\', \'Pending\', \'Awaiting Packing\', \'Packing\', \'Awaiting Despatch\', \'Partially Despatched\') AND o.OwnedBy=0
      INNER JOIN order_line AS ol2 ON ol2.Parent_ID=ol.Order_Line_ID
      WHERE ol.Despatch_ID=0
      GROUP BY ol2.Product_ID

    ) AS u
    GROUP BY u.Product_ID

  ) AS a ON a.Product_ID=p.Product_ID
  WHERE p.Classification_ID=%1$d
  GROUP BY p.Product_ID
  HAVING Discontinued=\'N\' OR Quantity_In_Stock>0
  ORDER BY p.Product_Title', $classificationId));

#####

-- Having to union because some eMat product packs contain more than one eMat, thus we need to multiply the parent qty by the child qty
SELECT u.DatePeriod AS Month, u.Product_ID, u.Product_SKU, u.Product_Title, SUM(u.Quantity) AS 'Quantity'

FROM (
  SELECT DATE_FORMAT(ol.Created_On, '%Y-%m') AS DatePeriod,
  ol.Product_ID, ol.Product_Title, ol.Product_SKU, SUM(ol.Quantity) AS Quantity
  FROM order_line AS ol
  INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID AND o.Status NOT IN('Incomplete','Unauthenticated','Cancelled')
  WHERE ol.Parent_ID=0 AND ol.Product_Title LIKE '%emat%' AND ol.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)
  GROUP BY DatePeriod, ol.Product_ID

UNION ALL

  SELECT DATE_FORMAT(ol2.Created_On, '%Y-%m') AS DatePeriod,
  ol2.Product_ID, ol2.Product_Title, ol2.Product_SKU, SUM(ol.Quantity*ol2.Quantity) AS Quantity
  FROM order_line AS ol
  INNER JOIN order_line AS ol2 ON ol2.Order_Line_ID=ol.Parent_ID
  INNER JOIN orders AS o ON o.Order_ID=ol2.Order_ID AND o.Status NOT IN('Incomplete','Unauthenticated','Cancelled')
  WHERE ol2.Product_Title LIKE '%emat%' AND ol2.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)
  GROUP BY DatePeriod, ol2.Product_ID

) AS u

GROUP BY Month, Product_ID
ORDER BY Month DESC, Product_Title;