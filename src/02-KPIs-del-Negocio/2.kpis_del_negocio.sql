/*
File: 2.kpis_del_negocio.sql
Author: Laureano Rojas Castañeda
Date: 28/06/2025
Description:
    Cálculo de KPIs en la base de datos 'shopmax.db'.
Usage:
    Ejecutar en base de datos 'shopmax.db'.
Dependencies:
    - customers
	- products
    - orders
	- order_items
*/

-- 01. Calcula el ingreso promedio por pedido.
SELECT
	AVG(total_amount) AS ingreso_promedio_por_pedido
FROM
	orders;

-- 02. Encuentra los 5 clientes que más han gastado desde que se unieron.
SELECT
	c.customer_id,
    c.name AS nombre,
    SUM(o.total_amount) AS total_gastado
FROM customers c
	JOIN orders o ON c.customer_id = o.customer_id
GROUP BY
	c.customer_id, c.name
ORDER BY
	total_gastado DESC
--LIMIT 5 --> Descomentar para limitar a los 5 clientes que más han gastado
;

-- 03. Obtén la cantidad de pedidos hechos por cada cliente junto con su nombre.
SELECT
    c.customer_id,
    c.name AS nombre,
    COUNT(o.order_id) AS cantidad_pedidos
FROM 
	customers c
    JOIN orders o ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id, c.name
ORDER BY
    cantidad_pedidos DESC;