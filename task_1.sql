USE hw_rdb03;

SELECT 
	*, 
    (SELECT customer_id FROM orders WHERE od.order_id = orders.id) AS customer_id 
FROM order_details AS od;