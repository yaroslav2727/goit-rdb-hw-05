USE hw_rdb03;

WITH temp AS (SELECT * FROM order_details WHERE quantity > 10)
SELECT order_id, AVG(temp.quantity) AS avg_quantity 
FROM temp
GROUP BY order_id;