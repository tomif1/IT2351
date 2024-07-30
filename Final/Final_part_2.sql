USE final;
DROP PROCEDURE IF EXISTS add_product;
DELIMITER //
CREATE PROCEDURE add_product(item_id_input int, item_name_input varchar(50), item_artist_input varchar(50), item_price_input decimal)
BEGIN
    DECLARE sql_error TINYINT DEFAULT FALSE;
    BEGIN
		DECLARE EXIT HANDLER FOR SQLEXCEPTION
			SET sql_error = TRUE;
				insert into products values
				(item_id_input, item_name_input, item_artist_input, item_price_input);
SELECT 'New item has been added successfully' as 'Message';
    END;
    IF sql_error = TRUE THEN
		SELECT 'Item could not be added due to SQL error.' as 'Message';
	END IF;
END //

DELIMITER ;
call add_product(6, 'Wii-U', 'Nintendo', 99.99);

select * from products;

