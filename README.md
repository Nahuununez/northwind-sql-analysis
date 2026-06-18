# Análisis de datos - Northwind

## Objetivo
El proyecto tiene como principal función el **análisis de métricas de ventas** distinguiendo por cliente, empleado y producto según el caso requerido, aplicando filtros y normalización de datos sobre factores como categorías de productos, control de stock y performance de empleados.

## Dataset
El dataset utilizado es [Northwind](https://github.com/pthom/northwind_psql), una base de datos clásica que simula una empresa de ventas con pedidos, clientes, productos, empleados y proveedores.

## Herramientas
- **DBeaver:** entorno utilizado para la escritura y ejecución de scripts
- **PostgreSQL:** motor de base de datos
- **SQL:** lenguaje utilizado para resolver las preguntas de negocio

## Preguntas de negocio
- [**Ventas por región**](sql/ventas_por_region.sql): las 10 ciudades con mayores ventas totales, incluyendo país de referencia.
- [**Ventas por empleado**](sql/ventas_por_empleado.sql): total de ventas realizadas por cada empleado, ordenado de mayor a menor.
- [**Ventas por categoría**](sql/ventas_por_categoria.sql): total de ventas por categoría de producto, ordenado de mayor a menor.
- [**Clientes con mayor volumen de compras**](sql/clientes_top.sql): los 10 clientes con mayor cantidad de órdenes y unidades compradas.
- [**Productos con stock bajo vs demanda**](sql/stock_vs_demanda.sql): productos cuya demanda supera al stock disponible, con la diferencia como métrica de urgencia.
