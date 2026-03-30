-- Amazon project

--category table

CREATE TABLE category
(
category_id int primary key,
category_name varchar(20)
);

--customer table
CREATE TABLE customers
(
customer_id INT PRIMARY KEY,
f_name VARCHAR(20),
l_name VARCHAR(20),
state VARCHAR(20),
address varchar (5) default ('xxxx')
);

--seller table
create table sellers
(seller_id int primary key,
seller_name varchar(20)
);

-- products table
create table products
(product_id int primary key,
product_name varchar(15),
price float,
cogs	float,
category_id	 int,--fk
constraint product_fk_category foreign key(category_id) references category(category_id),
);

-- orders table 
create table orders
(order_id int primary key,	
order_date	date,
customer_id	int,--fk
constraint orders_fk_customer foreign key(customer_id) references customers(customer_id),
order_status varchar(15),	
product_id	int ,--fk
constraint orders_fk_product foreign key(product_id) references products(product_id),
seller_id int,--fk
constraint orders_fk_seller foreign key(seller_id) references sellers(seller_id)
);

-- order_item
create table order_item
(order_item_id int primary key,	
order_id int,--fk
constraint order_item_fk_order foreign key(order_id) references orders(order_id),
product_id int, --fk	
constraint order_item_fk_product foreign key(product_id) references products (product_id),
quantity  int,	
price_per_unit	float,
total_price float
);

-- payments table
create table payments
( payment_id int primary key,
payment_date	date,
payment_mode	varchar(15),
payment_status	varchar(10),
order_id int,--fk
constraint payments_fk_orders foreign key(order_id) references orders(order_id)
);

-- shipping table
create  table shipping
(shipping_id int primary key,	
order_id	int,--fk
constraint shipping_fk_orders foreign key(order_id) references orders(order_id),
delivery_status	varchar(15),
shipping_date	date,
return_date date
);

-- inventory table
create table inventory
(inventory_id int primary key,	
product_id	int,--fk
constraint inventory_fk_products foreign key (product_id) references products(product_id),
stock_remaining	 int,
warehouse_id	int,
restock_date date
);







