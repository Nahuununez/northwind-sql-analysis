-- Analisis de ventas por region(ciudad) --
SELECT
	ROUND(SUM(((od.unit_price * (1 - COALESCE(od.discount, 0)) * od.quantity)))::numeric, 2) AS ventas,
	c.city AS region,
	c.country AS pais
FROM
	order_details od
JOIN orders o ON od.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.city, c.country
ORDER BY ventas DESC
LIMIT 10;
	