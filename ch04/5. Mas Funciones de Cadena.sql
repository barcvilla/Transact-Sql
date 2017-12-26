-- Funciones de Cadena: LTRIM RTRIM
-- Creamos una tabla temporal
create table #trimExample (col1 nvarchar(10));
go

-- Poblamos la tabla
insert into #trimExample(col1)values('a'),('b'),('c'),('d');

-- seleccionamos los valores usando las funciones
select col1, '*' + rtrim(col1) + '*' as 'rtrim',
'*' + ltrim(col1) + '*' as 'ltrim'
from #trimExample

-- Eliminamos la tabla temporal
drop table #trimExample;

-- Funciones LEFT Y RIGHT
select LastName, left(LastName, 5) as "LEFT",
RIGHT(LastName, 4) as "RIGHT" from Person.Person
where BusinessEntityID in (293,295,211,297,299,3057,15027);

/**
* LEN : Retorna el nunero de caracteres en una cadena.
* DATALENGHT : Retorna la cantidad de bytes en una cadena. DATALENGTH retorna el mismo valor que LEN
* cuando la cadena es un tipo de dato CHAR o VARCHAR que toma un byte por caracter. El problema ocurre
* cuando se usa DATALENGTH en los tipos de datos NCHAR o NVARCHAR que toma dos bytes por caracter.
**/
select lastname, len(LastName) as "Length",
DATALENGTH(LastName) as "Longitud de datos internos"
from Person.Person
where BusinessEntityID in (293,295,211,297,299,3057,15027);

/**
* CHARINDEX : Encuentra la posicion numerica de inicio de una cadena de busqueda dentro de otra cadena.
* Al verificar si el valor retornado por CHARINDEX es mayor que cero, podemos usar la funcion para
* determinar si la cadena buscada existe dentro del segundo valor. Usualmente se utiliza CHARINDEX
* para buscar un caracter particular como el simbolo @ en una columna de email junto con otras funciones
* para analizar la cadena. La funcion CHARINDEX necesita dos parametros: La cadena a buscar y
* la cadena donde sera buscada. Un parametro opcional, la ubicacion de inicio, que instruye a la funcion un 
* numero dado de caracteres a ignorar al inicio de la cadena objetivo
**/
select LastName, CHARINDEX('e', LastName) as "Find e",
CHARINDEX('e', LastName, 4) as "Skip 3 Charaters",
CHARINDEX('be', LastName) as "Find be",
CHARINDEX('Be', LastName) as "Find be"
from Person.Person
where BusinessEntityID in (293,295,211,297,299,3057,15027);
