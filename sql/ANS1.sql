/* answering the questions
1. top 10 products by total sales value*/
--orderitem= order and product table
-- p id
--sum qty* price per unit
--group by product id
-- top 10

select*from order_item;

--creating new c
alter table order_item
add total_sale float;

--updating price qty*price per unit
UPDATE order_item
SET total_sale = quantity * price_per_unit;

select*from order_item
order by quantity desc;

select*
from orders as o
join
order_item as oi
on oi.order_id=o.order_id
join products as p
on p.product_id=oi.product_id


--selecting the columns that are necessary
select top 10
	oi.product_id,
	p.product_name,
	sum(oi.total_sale) as total_sale,
	count(o.order_id) as total_orders
from orders as o
join
order_item as oi
on oi.order_id=o.order_id
join products as p
on p.product_id=oi.product_id
GROUP BY oi.product_id, p.product_name
order by 3 desc;