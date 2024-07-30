USE final;
DROP TRIGGER IF EXISTS products_before_insert;
DELIMITER //
CREATE TRIGGER products_before_insert
                BEFORE INSERT ON products
                FOR EACH ROW
BEGIN
IF NEW.item_price < 0
THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Price must be a positive value';
END IF;
END//
DELIMITER ;

INSERT INTO products
VALUES
(7, 'Never Gonna Give You Up', 'Rick Astley', -1.00);
SELECT * FROM products