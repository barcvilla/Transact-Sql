--- SUBSTRING --- 
-- Retorna una porcion de una cadena empezando en una posicion dada para un numero
-- especifico de caracteres.
-- Funcion SUBSTRING(la cadena, ubicacion de inicio, el numero de caracteres a recuperar)
select LastName, SUBSTRING(LastName, 1, 4) as "First 4", 
SUBSTRING(LastName, 5, 50) as "Characters 5 and later"
from Person.Person
where BusinessEntityID in (293, 295, 211, 297, 299, 3057, 15027);

-- CHOOSE: Nos permite seleccionar un valor dentro de un array basado en un indice. La funcion
-- requiere un indice y una lista de valores para el array.
select CHOOSE(4, 'a', 'b', 'c', 'd', 'e', 'f', 'g');

-- REVERSE: Retorna una cadena en orden reverso
select REVERSE('olleh');

-- UPPER y LOWER: Funciones que permiten cambiar una cadena en mayusculas o minusculas.
select LastName, UPPER(LastName) as "UPPER", LOWER(LastName) as 'LOWER'
from Person.Person
where BusinessEntityID in (293, 295, 211, 297, 299, 3057, 15027);

-- REPLACE: Usamos la funcion para sustituir un valor de cadena dentro de otro valor de cadena
-- REPLACE tiene tres parametros. Usamos REPLACE para limpiar datos
select LastName, REPLACE(LastName, 'A', 'Z') as 'Replace A',
REPLACE(LastName, 'A', 'ZZ') as 'Replace A with 2 Characteres',
REPLACE(LastName, 'ab', '') as 'Remove string'
from Person.Person;

select BusinessEntityID, LastName, MiddleName, REPLACE(LastName, 'a', MiddleName) as 'Replace with MiddleName',
REPLACE(LastName, MiddleName, 'a') as 'Replace MiddleName'
from Person.Person
where BusinessEntityID in (285, 293, 10314);
