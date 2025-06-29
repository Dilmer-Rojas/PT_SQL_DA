-- 01 Detecta si existen productos con price = 0 o NULL.
SELECT
    product_id,
    product_name,
    price,
    category,
    CASE
        WHEN price IS NULL THEN 'ES NULL'
        WHEN price = 0 THEN 'PRECIO 0'
    END AS estado
FROM
    products
WHERE
    price IS NULL OR price = 0;

-- 02 Encuentra pedidos donde la suma del total de order_items (quantity * unit_price) 
	-- no coincide con el total_amount de orders (posible error de facturación).
SELECT
    o.order_id,
    o.total_amount,
    SUM(oi.quantity * oi.unit_price) AS suma_items,
    ABS(SUM(oi.quantity * oi.unit_price) - o.total_amount) AS diferencia_absoluta,
    ROUND(ABS(SUM(oi.quantity * oi.unit_price) - o.total_amount) / o.total_amount * 100, 2) AS porcentaje_diferencia
FROM
    orders o
    JOIN order_items oi ON oi.order_id = o.order_id
GROUP BY
    o.order_id, o.total_amount
HAVING
    ABS(SUM(oi.quantity * oi.unit_price) - o.total_amount) / o.total_amount > 0.05
ORDER BY
    porcentaje_diferencia DESC;