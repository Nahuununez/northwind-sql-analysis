-- Analisis de ventas por categoria -- 
SELECT
	ROUND(SUM(((od.unit_price * (1 - COALESCE(od.discount, 0)) * od.quantity)))::numeric, 2) AS Ventas,
	c.category_name AS Categorias
FROM
	order_details od
JOIN products p ON od.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY Ventas DESC;