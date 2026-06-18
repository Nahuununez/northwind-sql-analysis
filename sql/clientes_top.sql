-- Analisis de ventas: Clientes con mayor volumen de compras --

SELECT
	c.company_name as cliente,
	COUNT(o.order_id) as ordenes_totales,
	SUM(od.quantity) as cantidad_productos_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP by c.customer_id
ORDER by cantidad_productos_total DESC
LIMIT 10;