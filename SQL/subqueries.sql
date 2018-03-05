# Subqueries

## Get new results (often by using aliases) in super-query (outer-query) from results obtained with sub-query (inner-query).

## 'Sub-queries are the logically correct way to solve problems of the form, "Get facts from A, conditional on facts from B".' 

## 'If the outer query expects a single value or a list of values from the subquery, the subquery can only use one expression or column name in its select list.'

## 'Some common uses for subqueries are to retrieve the results of an aggregate function such as SUM or COUNT or to look up a description based on a code value.'

## Remember to "raise up" fields from sub/inner-queries to super/outer-queries in order to reference and use them beyond where they were defined 

## Example: Using LEFT JOINS... (note: joining using 'ON' a.key=b.key; and use of aliases to capture values in main SELECT statement)

SELECT p.Product_Title, p.Product_ID AS Quick_Find, DATE_FORMAT(ts.Created_On, \%Y %m\) AS Month, tp.Purchased, ts.Orders, tq.Quantity
		
FROM product AS p

LEFT JOIN (
	SELECT ws.Product_ID, SUM(ws.Quantity_In_Stock) AS Quantity
	FROM warehouse_stock AS ws
	GROUP BY ws.Product_ID
) AS tq ON tq.Product_ID=p.Product_ID

LEFT JOIN (
	SELECT pl.Product_ID, SUM(pl.Quantity - pl.Quantity_Decremental) AS Purchased
	FROM purchase_line AS pl
	WHERE pl.Product_ID>0
	GROUP BY pl.Product_ID
) AS tp ON tp.Product_ID=p.Product_ID

LEFT JOIN (
	SELECT ol.Created_On, ol.Product_ID, SUM(ol.Quantity) AS Orders
	FROM order_line AS ol
	WHERE ol.Despatch_Id > 0 AND ol.Product_ID>0
	GROUP BY ol.Product_ID
) AS ts ON ts.Product_ID=p.Product_ID

INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=%d # php vars
GROUP BY p.Product_ID, Month
ORDER BY p.Product_Title ASC, Month ASC;	

## Example: Regular query with longhand (non-aliases) to calculate Gross_Profit

SELECT 
IF(c.Parent_Contact_ID>0, c.Parent_Contact_ID, c.Contact_ID) AS Contact_ID, 
IF(c.Parent_Contact_ID>0, o2.Org_Name, CONCAT_WS(' ', p.Name_First, p.Name_Last)) AS Contact,
cl.name AS Classification_Name, 
MAX(i.Created_On) AS Last_Invoice_Date, 
COUNT(DISTINCT o.Order_ID) AS Total_Order_Count, 
COUNT(DISTINCT i.Invoice_ID) AS Total_Invoice_Count, 
ROUND(SUM(o.SubTotal-o.TotalDiscount), 2) AS Total_Net, 
ROUND(SUM(o.SubTotal-o.TotalDiscount)/(COUNT(DISTINCT i.Invoice_ID)), 2) AS Average_Invoice,
ROUND(SUM(o.Cost), 2) AS Total_Cost, 
ROUND(SUM(o.SubTotal-o.TotalDiscount-o.Cost), 2) AS Total_Profit, 
ROUND( (SUM(o.SubTotal-o.TotalDiscount)-SUM(o.Cost)) / (SUM(o.SubTotal-o.TotalDiscount)) * 100, 2) AS Gross_Profit

FROM orders AS o 
	INNER JOIN order_line AS ol ON ol.Order_ID=o.Order_ID 
	INNER JOIN invoice AS i ON i.Invoice_ID=ol.Invoice_ID AND i.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) 
	INNER JOIN channel AS ch ON ch.Channel_ID=o.Channel_ID AND ch.Classification_ID<>4 
	INNER JOIN classification AS cl on cl.id=ch.Classification_ID 
	INNER JOIN customer AS cu ON cu.Customer_ID=i.Customer_ID 
	INNER JOIN contact AS c ON c.Contact_ID=cu.Contact_ID 
	LEFT JOIN contact AS c2 ON c2.Contact_ID=c.Parent_Contact_ID 
	LEFT JOIN person AS p ON p.Person_ID=c.Person_ID 
	LEFT JOIN organisation AS o2 ON o2.Org_ID=c2.Org_ID 

WHERE o.Is_Cost_Price='N' AND o.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) AND ch.Classification_ID=%d #php vars
GROUP BY Contact_ID;

## Example: Subquery using aliases to calculate Gross_Profit
SELECT *, ROUND( ( (Total_Net-Total_Cost) / Total_Net ) * 100, 2) AS Gross_Profit

	FROM (

		SELECT 
			IF(c.Parent_Contact_ID>0, c.Parent_Contact_ID, c.Contact_ID) AS Contact_ID, 
			IF(c.Parent_Contact_ID>0, o2.Org_Name, CONCAT_WS(' ', p.Name_First, p.Name_Last)) AS Contact,
			cl.name AS Classification_Name, 
			MAX(i.Created_On) AS Last_Invoice_Date, 
			COUNT(DISTINCT o.Order_ID) AS Total_Order_Count, 
			COUNT(DISTINCT i.Invoice_ID) AS Total_Invoice_Count, 
			ROUND(SUM(o.SubTotal-o.TotalDiscount), 2) AS Total_Net, 
			ROUND(SUM(o.SubTotal-o.TotalDiscount)/(COUNT(DISTINCT i.Invoice_ID)), 2) AS Average_Invoice,
			ROUND(SUM(o.Cost), 2) AS Total_Cost, 
			ROUND(SUM(o.SubTotal-o.TotalDiscount-o.Cost), 2) AS Total_Profit
			
			FROM orders AS o 
				INNER JOIN order_line AS ol ON ol.Order_ID=o.Order_ID 
				INNER JOIN invoice AS i ON i.Invoice_ID=ol.Invoice_ID AND i.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) 
				INNER JOIN channel AS ch ON ch.Channel_ID=o.Channel_ID AND ch.Classification_ID<>4 
				INNER JOIN classification AS cl on cl.id=ch.Classification_ID 
				INNER JOIN customer AS cu ON cu.Customer_ID=i.Customer_ID 
				INNER JOIN contact AS c ON c.Contact_ID=cu.Contact_ID 
				LEFT JOIN contact AS c2 ON c2.Contact_ID=c.Parent_Contact_ID 
				LEFT JOIN person AS p ON p.Person_ID=c.Person_ID 
				LEFT JOIN organisation AS o2 ON o2.Org_ID=c2.Org_ID 
			
			WHERE o.Is_Cost_Price='N' AND o.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) AND ch.Classification_ID=%d #php vars
			
			GROUP BY Contact_ID

		) AS z;

