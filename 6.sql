SELECT
	COUNT(order_id), /* 행의 갯수 */
	SUM(stock),
	MIN(stock),
	MAX(stock),
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
GROUP BY
	product_name;

/*---------------------------------------------------------------------------------*/

SELECT
	product_name,
	sum(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;

/*---------------------------------------------------------------------------------*/

SELECT
	*,
	price * stock AS total_price
FROM
	order_mst;

/*---------------------------------------------------------------------------------*/

SELECT
	product_name,
	COUNT(order_id) AS order_count,
	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING
	max(stock) > 49
ORDER BY
	order_count desc,
	stock_sum desc
LIMIT 0, 2;

/*---------------------------------------------------------------------------------*/
	
SELECT
	*
FROM
	order_mst
LIMIT 3, 3;
	
	
	
	
	
	
	
	
	
	
	
	
	
	