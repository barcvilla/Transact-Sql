/***************************
* Using String Functions ***
***************************/

/*****************
* RTRIM & LTRIM **
*****************/

-- 1. CREATE TEMP TABLE
create table #trimExample(COL1 VARCHAR(10));
go

-- poblamos la table
insert into #trimExample(COL1)
values('a'),('b  '),('  c'),('  d  ');

-- seleccionamos los registros usando las funciones
select COL1, '*' + rtrim(COL1) + '*' as "RTRIM", '*' + ltrim(COL1) + '*' as "LTRIM"
from #trimExample;

-- Clean
drop table #trimExample;

/****************
* LEFT & RIGHT **
****************/
/**
* LEFT & RIGHT retorna un numero especifico de caracteres del lado izquierdo y derecho de un String
*/
-- 1.
select LastName, left(LastName, 5) as "Left",
right(LastName, 4) as "Right"
from Person.Person 
where BusinessEntityID in (293, 295, 211, 297, 299, 3057, 15027);

