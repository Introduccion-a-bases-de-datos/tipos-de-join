-- Consulta básica de selección (SELECT *): Selección de todos los campos de la tabla Producto
select * from dbo.Producto;

-- Consulta básica de selección (SELECT *): Selección de todos los campos de la tabla Compra, con alias 'c'
select * from Compra c;

-- Consulta básica de selección (SELECT *): Selección de todos los campos de la tabla Venta, con alias 'v'
select * from Venta v;

-- INNER JOIN: Unión interna de las tablas Compra, Venta y Producto, retornando solo registros que existen en ambas tablas unidas
select 
p.nombre,
c.total as compra,
v.total as venta
from Compra as c
    join Venta as v on c.id_producto = v.producto_id 
    join Producto as p on p.id = c.id_producto;

-- LEFT JOIN: Unión externa izquierda, retornando todos los registros de la tabla Compra y los coincidentes de Venta, con Producto
select 
p.nombre,
c.total as compra,
v.total as venta
from Compra as c
    left join Venta as v on c.id_producto = v.producto_id 
    join Producto as p on p.id = c.id_producto;

-- RIGHT JOIN: Unión externa derecha, retornando todos los registros de la tabla Venta y los coincidentes de Compra, con Producto
select 
p.nombre,
c.total as compra,
v.total as venta
from Compra as c
    right join Venta as v on c.id_producto = v.producto_id 
    join Producto as p on p.id = v.producto_id;

-- FULL OUTER JOIN: Unión externa completa, retornando todos los registros de ambas tablas (Compra y Venta), incluso si no coinciden
select 
v.id,
c.id,
c.total as compra,
v.total as venta
from Compra as c
    full outer join Venta as v on c.id_producto = v.producto_id;
