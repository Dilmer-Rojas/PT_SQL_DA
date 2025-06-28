-- Cantidad total de clientes registrados por mes

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

