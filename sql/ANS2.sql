 /*2. Revenue by Category
Total revenue per category
Percentage contribution*/
--CATEGORY ID,NAME , TOTAL REVENUE, TOTAL CONTRIBUTION
--OI==PRODUCT==CATEGORY
--GROUP BY CAT ID AND NAME SUM TOTAL

select 
	p.category_id,
	c.category_name,
	sum(oi.total_sale)as total_sale,
	sum(oi.total_sale)/(select sum(total_sale) from order_item)*100 as contributions
FROM order_item as oi
join
products as p
on p.product_id=oi.product_id
left join category as c
on c.category_id=p.category_id
group by p.category_id,
	c.category_name
	order by 3 desc;