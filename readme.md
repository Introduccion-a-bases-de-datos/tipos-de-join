# Tipos de JOIN en SQL

Este proyecto contiene ejemplos de cómo utilizar los diferentes tipos de `JOIN` en SQL para combinar datos de varias tablas. A continuación se explican los tipos de `JOIN` que se usan en las consultas del proyecto.

## 1. INNER JOIN
El `INNER JOIN` devuelve solo los registros que tienen coincidencias en ambas tablas. Si un registro en una tabla no tiene coincidencia en la otra, no se incluirá en los resultados.

**Sintaxis:**

```sql
SELECT *
FROM TablaA as A
INNER JOIN TablaB as B
ON A.campo_id = B.campo_id;
```

**Ejemplo en el proyecto:**
```sql
SELECT 
  p.nombre,
  c.total AS compra,
  v.total AS venta
FROM Compra AS c
JOIN Venta AS v
  ON c.id_producto = v.producto_id
JOIN Producto AS p
  ON p.id = c.id_producto;
```

## 2. LEFT JOIN (Unión Externa Izquierda)
El `LEFT JOIN` devuelve todos los registros de la tabla de la izquierda (la primera tabla mencionada) y los registros coincidentes de la tabla de la derecha. Si no hay coincidencias, los resultados de la tabla de la derecha serán `NULL`.

**Sintaxis:**

```sql
SELECT *
FROM TablaA as A
LEFT JOIN TablaB as B
ON A.campo_id = B.campo_id;
```

**Ejemplo en el proyecto:**
```sql
SELECT 
  p.nombre,
  c.total AS compra,
  v.total AS venta
FROM Compra AS c
LEFT JOIN Venta AS v
  ON c.id_producto = v.producto_id
JOIN Producto AS p
  ON p.id = c.id_producto;
```

## 3. RIGHT JOIN (Unión Externa Derecha)
El `RIGHT JOIN` es lo contrario del `LEFT JOIN`: devuelve todos los registros de la tabla de la derecha (la segunda tabla mencionada) y los registros coincidentes de la tabla de la izquierda. Si no hay coincidencias, los resultados de la tabla de la izquierda serán `NULL`.

**Sintaxis:**

```sql
SELECT *
FROM TablaA as A
RIGHT JOIN TablaB as B
ON A.campo_id = B.campo_id;
```

**Ejemplo en el proyecto:**
```sql
SELECT 
  p.nombre,
  c.total AS compra,
  v.total AS venta
FROM Compra AS c
RIGHT JOIN Venta AS v
  ON c.id_producto = v.producto_id
JOIN Producto AS p
  ON p.id = v.producto_id;
```

## 4. FULL OUTER JOIN (Unión Externa Completa)
El `FULL OUTER JOIN` devuelve todos los registros cuando hay una coincidencia en cualquiera de las tablas, o registros no coincidentes de ambas tablas. Si un registro no tiene coincidencia en la otra tabla, los resultados faltantes serán `NULL`.

**Sintaxis:**

```sql
SELECT *
FROM TablaA as A
FULL OUTER JOIN TablaB as B
ON A.campo_id = B.campo_id;
```

**Ejemplo en el proyecto:**
```sql
SELECT 
  v.id,
  c.id,
  c.total AS compra,
  v.total AS venta
FROM Compra AS c
FULL OUTER JOIN Venta AS v
  ON c.id_producto = v.producto_id;
```

## Resumen de diferencias entre JOINs

- **INNER JOIN:** Solo devuelve registros con coincidencias en ambas tablas.
- **LEFT JOIN:** Devuelve todos los registros de la tabla izquierda y los coincidentes de la derecha.
- **RIGHT JOIN:** Devuelve todos los registros de la tabla derecha y los coincidentes de la izquierda.
- **FULL OUTER JOIN:** Devuelve todos los registros de ambas tablas, sean coincidentes o no.

---

Este repo contiene consultas SQL que ilustran el uso de estos tipos de `JOIN`. Cada consulta está diseñada para mostrar cómo se comportan las uniones entre tablas en diferentes escenarios de datos.
