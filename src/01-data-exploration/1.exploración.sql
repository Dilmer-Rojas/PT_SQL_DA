/*
File: 1.exploración.sql
Author: Laureano Rojas Castañeda
Date: 28/06/2025
Description:
    Exploración de datos en la base de datos 'shopmax.db'.
Usage:
    Ejecutar en base de datos 'shopmax.db'.
Dependencies:
    - customers
	- products
    - orders
	- order_items
*/

-- 01. Cantidad total de clientes registrados por mes.

SELECT 
	MONTH(signup_date) AS mes,
    COUNT(*) AS cantidad_clientes_mes
FROM 
	shopmax.customers
GROUP BY 
	mes
ORDER BY 
	mes
;

-- 02. Lista los 10 productos más vendidos por cantidad total.
SELECT 
	p.product_id,
	p.product_name AS nombre_producto,
	SUM(oi.quantity) AS cantidad_total
FROM 
	shopmax.products p
JOIN 
	shopmax.order_items oi ON p.product_id = oi.product_id
GROUP BY 
	p.product_id, p.product_name
ORDER BY 
	cantidad_total DESC
-- LIMIT 10 -> Descomentar para limitar a los 10 productos más vendidos
;

-- 03. Calcula el total de ventas (en dinero) por categoría de producto.

SELECT 
	p.category,
    SUM(oi.quantity * oi.unit_price) AS total_ventas_en_dinero
FROM
	order_items oi
    JOIN orders o ON oi.order_id = o.order_id
    JOIN products p ON oi.product_id = p.product_id
GROUP BY 
	p.category
ORDER BY
	total_ventas_en_dinero DESC;