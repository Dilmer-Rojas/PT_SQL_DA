-- 01 ¿Cuál fue el mes con mayor volumen de ventas (en dinero)?
SELECT
	MONTH(o.order_date) AS mes,
    SUM(oi.quantity * oi.unit_price) AS total_ventas_en_dinero
FROM
	orders o
    JOIN order_items oi ON oi.order_id = o.order_id
GROUP BY
	mes
ORDER BY
	total_ventas_en_dinero DESC;
-- LIMIT 1; -- Descomentar para limitar al mes con mayor volumen de ventas

-- 02 Obtén el promedio de unidades vendidas por producto por mes.
SELECT
    YEAR(o.order_date) AS anio,
    MONTH(o.order_date) AS mes,
    oi.product_id,
    SUM(oi.quantity) / COUNT(DISTINCT o.order_id) AS promedio_unidades_vendidas
FROM
    orders o
    JOIN order_items oi ON oi.order_id = o.order_id
-- WHERE o.status = 'completed'  -- Si tienes el campo status
GROUP BY
    anio, mes, oi.product_id
ORDER BY
    anio, mes, oi.product_id;
