USE hw_rdb03;

DELIMITER //

DROP FUNCTION IF EXISTS Divide;

CREATE FUNCTION Divide(divident FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
	DECLARE result FLOAT;
	SET result = divident / divisor;
    RETURN result;
END //

DELIMITER ;

SET @first_shipment_divisor = 10;

SELECT 
	*, 
	ROUND(Divide(quantity, @first_shipment_divisor)) AS first_shipment_qty
FROM order_details;