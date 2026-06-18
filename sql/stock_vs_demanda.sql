-- Analisis de ventas: Productos con stock bajo vs demanda --


SELECT * FROM (
	SELECT
	    p.product_name as producto,
	    s.company_name as proveedor,
	    units_in_stock as stock,
	    units_on_order as ordenes,
	    (units_in_stock - units_on_order) as stock_faltante
	FROM products p
	JOIN suppliers s ON p.supplier_id = s.supplier_id
	) control_stock
WHERE stock_faltante < 0 
ORDER BY stock_faltante ASC;