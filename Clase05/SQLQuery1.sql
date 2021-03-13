-- FUNCIONES AGREGADAS
/*
	- COUNT: Contar filas u ocurrencias
	- SUM: Sumarizar columnas numericas
	- AVG: Encontrar el promedio
	- MAX: Encontrar el valor m�ximo
	- MIN: Encontrar el valor m�nimo

	No consideran los nulos.
*/

-- Ejemplo 1

select 
	max(sueldo) [Mayor Sueldo],
	min(sueldo) [Menor Sueldo]
from rh.dbo.empleado;
go

-- Ejemplo 2

select 
	count(*) [Cantidad de filas],
	count(0) [Cantidad de filas], -- Cuenta cantidad de ceros
	count(1) [Cantidad de filas], -- Cuenta cantidad de unos
	sum(1) [Cantidad de filas],   -- Suma unos
	count(case when comision = 0 then null else comision end) [Cantidad de empleados con comision], -- Cuenta los valores no nulos
	count(iif( comision = 0, null, comision)) [Cantidad de empleados con comision] -- Cuenta los valores no nulos
from rh.dbo.empleado;
go

select * 
from rh.dbo.empleado
where comision is not null;
go

select iif(comison =0, null, comision)
from rh.dbo.empleado;
go



-- De Elena Del Castillo para todos:  03:09 PM
-- Ejercicio 1

select sum(sueldo + isnull(comision,0)) 
where idcargo = 'C05';
go

-- Ojo, es departamento de ventas.

select sum(sueldo + isnull(comision,0)) 
where iddepartamento = 103;
go


-- De Francesca Flores para todos:  03:14 PM
-- Ejercicio 2

select 


-- GROUP BY
/*
Desarrolle una sentencia SELECT para encontrar los departamentos 
que tienen por lo menos un trabajador. 
Base de datos RH.
*/

select distinct iddepartamento 
from rh.dbo.empleado;
go

-- Ejercicio
/*
Desarrollar una sentencia SELECT que permita obtener el importe de lo 
recaudado hasta el momento de los cursos vendidos. 
Base de datos EDUCA.
*/

select sum(pag_importe) recaudado
from educa.dbo.PAGO;
go

/*
La informacion se necesita por curso
*/

select cur_id, sum(pag_importe) recaudado
from educa.dbo.PAGO
group by cur_id;
go





