/*4. Monthly Sales Trend
Monthly revenue analysis
Current vs previous month comparison*/
-- last 1 year data
-- each month -- their sale and their prev month sale
-- window lag


select * from order_item;

WITH monthly_sales AS (
    SELECT
        YEAR(o.order_date) AS year,
        MONTH(o.order_date) AS month,
        SUM(oi.total_sale) AS total_sale
    FROM orders AS o
    JOIN order_item AS oi
        ON oi.order_id = o.order_id
    WHERE o.order_date >= DATEADD(YEAR, -1, (SELECT MAX(order_date) FROM orders))
    GROUP BY 
        YEAR(o.order_date),
        MONTH(o.order_date)
)

SELECT
    year,
    month,
    total_sale AS current_month_sale,
    LAG(total_sale) OVER (ORDER BY year, month) AS previous_month_sale,
    ROUND(
        (total_sale - LAG(total_sale) OVER (ORDER BY year, month)) * 100.0
        / NULLIF(LAG(total_sale) OVER (ORDER BY year, month), 0),
        2
    ) AS growth_percentage
FROM monthly_sales
ORDER BY year, month;