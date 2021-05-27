# HAVING

## WHERE filters for individual row data before SELECT, HAVING filters grouped data after SELECT.
## WHERE limits the number of rows displayed by SELECT, HAVING limits the number of groups displayed by GROUP BY.
## WHERE applies to the original row data and before aggregation; HAVING applies to the output row data after it has been aggregated.
## HAVING applies the condition to each aggregated group of rows, while the WHERE applies the condition to each individual row.

SELECT *
FROM (
	SELECT Product_ID, Catalogue_Number_1, Integration_ID, COUNT(*) AS count
		FROM product
		GROUP BY Catalogue_Number_1
		HAVING COUNT(*) > 1
		ORDER BY Catalogue_Number_1
	) AS i
HAVING Integration_ID > 1
ORDER BY count DESC;

## Find which order has total sales greater than 1000 and contains more than 600 items
SELECT ordernumber,
	SUM(quantityOrdered) AS itemsCount,
	SUM(priceeach) AS total
FROM orderdetails
GROUP BY ordernumber
HAVING total > 1000 AND itemsCount > 600

## Find all orders that have shipped and have total sales greater than 1500
SELECT a.ordernumber,
	SUM(priceeach) total,
	status
FROM orderdetails a
INNER JOIN orders b ON b.ordernumber = a.ordernumber
GROUP BY ordernumber
HAVING b.status = 'Shipped' AND total > 1500;

## Find duplicates
SELECT Product_ID, Catalogue_Number_1, COUNT(*)
FROM product
GROUP BY Catalogue_Number_1
HAVING COUNT(*) > 1
ORDER BY Product_ID;

## Find warehouses with stock or minimums
SELECT w.Warehouse_Name, SUM(Quantity_In_Stock) AS Quantity_In_Stock, minimumQuantity 
FROM warehouse AS w
LEFT JOIN warehouse_stock AS ws ON ws.Warehouse_ID=w.Warehouse_ID AND ws.Product_ID=%1$d
LEFT JOIN warehouse_product AS wp ON wp.warehouseId=w.Warehouse_ID AND wp.productId=%1$d
GROUP BY w.Warehouse_Name
HAVING Quantity_In_Stock OR minimumQuantity
ORDER BY w.Warehouse_Name ASC', $product->ID));