


create view part_5 as 
select distinct customers.customer_id as 'ID',customers.customer_name as 'Customer Name', products.item_name 'Product Purchased', (products.item_price * orders.quantity* 1.06) as 'Order Total'
from orders
join order_details on orders.order_id = order_details.order_id
join customers on customers.customer_id = order_details.customer_id
join products on orders.item_id = products.item_id
order by customers.customer_id;


