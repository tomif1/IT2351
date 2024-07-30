USE final;
DROP EVENT IF EXISTS product_launch;
DELIMITER //
CREATE EVENT product_launch
ON SCHEDULE
    AT '2024-5-11 4:17:00'
DO
BEGIN
INSERT INTO products
VALUES
(7, 'Switch 2', 'Nintendo', 399.99);
END //
DELIMITER ;

select * from products