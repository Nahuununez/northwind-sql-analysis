-- Analisis de ventas por empleado --
SELECT
	e.last_name AS apellido,
	e.first_name AS nombre,
	ROUND(SUM(((od.unit_price * (1 - COALESCE(od.discount, 0)) * od.quantity)))::numeric, 2) AS ventas
FROM
	employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY e.last_name, e.first_name
ORDER BY ventas DESC;

	