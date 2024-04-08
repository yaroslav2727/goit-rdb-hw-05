USE hw_rdb03;

SELECT 
	order_id, 
	AVG(temp.quantity) AS avg_quantity
FROM (SELECT * FROM order_details WHERE quantity > 10) AS temp 
GROUP BY order_id;