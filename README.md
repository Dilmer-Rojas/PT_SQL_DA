## 🧠 PRUEBA TÉCNICA: Analista de Datos

**Tecnología**: SQL (MySQL)
**Duración sugerida**: 2 a 4 horas
**Nivel**: Intermedio



## 📦 Contexto de Negocio

Trabajas como postulante para una empresa de e-commerce llamada **ShopMax**. La empresa quiere entender mejor el comportamiento de sus usuarios, las ventas realizadas, y el rendimiento de sus productos. Te entregan una copia de una base de datos y te piden responder con consultas SQL.



## 🗂 Estructura de la Base de Datos

### `customers`

| customer\_id | name    | email   | signup\_date |
| ------------ | ------- | ------- | ------------ |
| INT          | VARCHAR | VARCHAR | DATE         |

### `orders`

| order\_id | customer\_id | order\_date | total\_amount |
| --------- | ------------ | ----------- | ------------- |
| INT       | INT          | DATE        | DECIMAL(10,2) |

### `order_items`

| item\_id | order\_id | product\_id | quantity | unit\_price |
| -------- | --------- | ----------- | -------- | ----------- |
| INT      | INT       | INT         | INT      | DECIMAL     |

### `products`

| product\_id | product\_name | category | price   |
| ----------- | ------------- | -------- | ------- |
| INT         | VARCHAR       | VARCHAR  | DECIMAL |

<br>

## ✅ RETO TÉCNICO (10 PREGUNTAS)

### 🔍 Parte 1: Exploración de Datos

1. **Consulta la cantidad total de clientes registrados por mes.**
2. **Lista los 10 productos más vendidos por cantidad total.**
3. **Calcula el total de ventas (en dinero) por categoría de producto.**



### 📊 Parte 2: KPIs del Negocio

4. **Calcula el ingreso promedio por pedido.**
5. **Encuentra los 5 clientes que más han gastado desde que se unieron.**
6. **Obtén la cantidad de pedidos hechos por cada cliente junto con su nombre.**



### ⏳ Parte 3: Análisis Temporal

7. **¿Cuál fue el mes con mayor volumen de ventas (en dinero)?**
8. **Obtén el promedio de unidades vendidas por producto por mes.**



### ⚠️ Parte 4: Control de Calidad y Validaciones

9. **Detecta si existen productos con `price = 0` o `NULL`.**
10. **Encuentra pedidos donde la suma del total de `order_items` (quantity \* unit\_price) no coincide con el `total_amount` de `orders` (posible error de facturación).**

<br>

## 📂 Entregables

* Archivo `.sql` con las 10 consultas.
* Opcional: un archivo `.md` o `.txt` con una breve interpretación de los hallazgos principales en lenguaje natural.



## 🧪 Datos de prueba

- Los datos de prueba lo puedes encontrar en: 

[✅ Customers](./DB/shopmax/shopmax_customers.sql)

[✅ Orders](./DB/shopmax/shopmax_orders.sql)

[✅ Order Items](./DB/shopmax/shopmax_order_items.sql)

[✅ Products](./DB/shopmax/shopmax_products.sql)