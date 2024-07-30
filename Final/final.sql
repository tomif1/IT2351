----------------------------------------------------------------
-- Tomi Fayomi IT2351
----------------------------------------------------------------
drop database if exists final;
create database final;

use final;

create table products
(
	item_id						int				not null 	 auto_increment,
    item_name					varchar(50)		not null,
    item_artist				 	varchar(50)		not null,
    item_price					decimal 		not null,
    constraint products_pk
		primary key (item_id),
	constraint products_unq
		unique (item_name, item_artist)
);

create table customers
(
	customer_id					int				not null		auto_increment,
    customer_name				varchar(50)		not null,
    customer_address			varchar(50) 	not null,
    customer_state				varchar(2)		not null,
    customer_zip				int				not null,
    customer_phone				varchar(30)		not null,
    constraint customers_pk
		primary key (customer_id)
);

create table orders
(
	order_id					int				not null		auto_increment,
    item_id						int 			not null,
    quantity 					int 			not null,
    constraint orders_pk
		primary key (order_id),
	constraint orders_fk_items
		foreign key (item_id) references products (item_id)
);

create table order_details
(
	order_id					int				not null,
    customer_id					int				not null,
    estimated_shipping_time		int				not null,
    order_shipped				date		 	not null,
    constraint order_details_fk_orders
		foreign key (order_id) references orders (order_id),
	constraint order_details_fk_customers
		foreign key (customer_id) references customers (customer_id)
);

create table product_plans
(
	item_id						int	,
    item_name					varchar(50)		not null,
    item_action					varchar(50)		not null,
    item_action_date			date,
    constraint product_plans_fk_items
		foreign key (item_id) references products (item_id)
);


insert into products values
(1,'Xbox 360','Microsoft', 249.99),
(2,'PS5','Sony', 549.99),
(3,'MW3','Activision', 69.99),
(4, 'GTA V', 'Rockstar', 19.99),
(5, 'Airplane 2', 'Koch', 4.99);

insert into customers values
(1, 'Olivier Miller','723 Airport St. Bristol','CT', 06010, 8637584359),
(2, 'Zac Gillespie','88 Madison St. Garner','NC', 27529, 2280686521),
(3, 'Markus Ramsey','649 N. Grandrose St. West Springfield','MA', 01089, 7137407942),
(4, 'Kaylum Espinoza','7923 Andover Drive Ringgold','GA', 30736, 9344126538),
(5, 'Garfield Mcbride','420 Winding Way St. San Angelo','TX',76901, 2100715955);

insert into orders values
(1,4,3),
(2,2,3),
(3,2,10),
(4,5,1),
(5,3,2),
(6,1,2);

insert into order_details values
(1,1,10,'2024-2-15'),
(2,2,7, '2024-4-8'),
(3,3,4, '2023-5-16'),
(4,4,1, '2024-1-9'),
(5,5,1, '2024-5-2'),
(6,1,3, '2024-5-10');

insert into product_plans values
(1,'Xbox 360', 'Remove', '2024-8-16'),
(4, 'GTA V', 'Remove', null),
(null, 'GTA 6', 'Add', '2025-6-6'),
(null, 'Hellblade 2','Add','2024-5-21'),
(null,'Switch 2','Add',null);





