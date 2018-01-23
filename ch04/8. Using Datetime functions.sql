/**
* GETDATE and SYSDATETIME : Retorna la fecha y hora actual del servidor. SYSDATETIME retorna siete lugares
* decimales despues del segundo, el tipo de datos datetime2(7) mientras que GETDATE devuelve sol tres
* lugares, el tipo de dato DATETIME.
*/
select GETDATE(), SYSDATETIME();
select GETDATE(), SYSDATETIME();
select GETDATE(), SYSDATETIME();
select GETDATE(), SYSDATETIME();

/*
* DATEADD : Usamos esta funcion para agregar un numero de unidades de tiempo a un fecha.
* DATEADD(<date part>, <number>, <date>)
*/
--1.
select OrderDate, 
				DATEADD(year, 1, OrderDate) as OneMoreYear,
				DATEADD(month, 1, OrderDate) as OneMoreMonth,
				DATEADD(day, -1, OrderDate) as OneLessDay
from Sales.SalesOrderHeader
where SalesOrderID in (43659, 43714, 60621);

--2.
select DATEADD(month, 1, '1/29/2009') as FebDate;

/**
* DATEDIFF : Esta funcion nos permite encontrar la diferencia entre dos fechas
* DATEDIFF(<date part>, <early date>, <later date>)
*/
--1 
select OrderDate, GETDATE() AS CurrentDateTime,
	DATEDIFF(year, OrderDate, GETDATE()) as YearDiff,
	DATEDIFF(month, OrderDate, GETDATE()) as MonthDiff,
	DATEDIFF(d, OrderDate, GETDATE()) as DayDiff
from Sales.SalesOrderHeader
where SalesOrderID in (43659, 43714, 60621);

--2.
select DATEDIFF(year, '12/31/2008', '1/1/2009') as YearDiff,
	   DATEDIFF(month, '12/31/2008', '1/1/2009') as MonthDiff,
	   DATEDIFF(d, '12/31/2008', '1/1/2009') as DayDiff;
	   
/**
* DATENAME and DATEPART : Estas funciones la parte de la fecha especificada. Los desarrolladores utilizan
* DATENAME y DATEPART para mostrar solo el año o el mes en los reportes.
* DATEPART siempre retorna un entero. DATENAME retorna un character string
* DATENAME(<date part>, <date>)
* DATEPART(<date part>, <date>) 
*/
--1.
select OrderDate, 
		DATEPART(year, OrderDate) as OrderYear,
		DATEPART(month, OrderDate) as OrderMonth,
		DATEPART(day, OrderDate) as OrderDay,
		DATEPART(weekday, OrderDate) as OrderWeekDay
from Sales.SalesOrderHeader
where SalesOrderID in (43659, 43714, 60621);

--2.
select OrderDate, 
		DATENAME(year, OrderDate) as OrderYear,
		DATENAME(month, OrderDate) as OrderMonth,
		DATENAME(day, OrderDate) as OrderDay,
		DATENAME(weekday, OrderDate) as OrderWeekDay
from Sales.SalesOrderHeader
where SalesOrderID in (43659, 43714, 60621);
