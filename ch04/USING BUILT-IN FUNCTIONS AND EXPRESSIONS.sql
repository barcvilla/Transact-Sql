-- USING BUILT-IN FUNCTIONS AND EXPRESSIONS

--1. ******* Concatenating Strings *******
-- 1.1
SELECT 'ab' + 'c';

-- 1.2. 
SELECT BusinessEntityID, FirstName + ' ' + LastName as "Full Name" FROM Person.Person;

-- 1.3.
SELECT BusinessEntityID, LastName + ', ' + FirstName as "Full Name" FROM Person.Person;

--2. ****** Concatenating Strings and Null *******
-- Cuando concatenamos un Sting con null, null es retornado. El sgte codigo muestra el problema
SELECT BusinessEntityId, FirstName + ' ' + MiddleName + ' ' + LastName as "Full Name" FROM 
	   Person.person;

--2.1 Simple CONCAT function
SELECT CONCAT('I', ' Love', ' writing', ' T-SQL') AS RESULT;

--2.2 Usando variables con CONCAT
DECLARE @a VARCHAR(30) = 'My birthday is on';
DECLARE @b DATE = '1980/08/25';
SELECT CONCAT(@a, @b) AS RESULT;

--2.3 Usando CONCAT con filas de tablas
SELECT CONCAT(AddressLine1, ' ', PostalCode) as Address FROM Person.Address;

--2-4 Usando CONCAT con NULL
SELECT CONCAT('I', ' ', 'love', ' ', 'using', ' ', 'CONCAT', ' ', 'because', ' ', 'NULL', 
' ', 'values', ' ', 'vanish', ' ', 'SEE:', NULL, '!') AS RESULT;

/*
* Hay dos funciones disponibles para reemplazar valores null con otros valores. ISNULL, el cual
* requiere dos parametros: el valor a verificar y el reemplazo para valores null. La otra funcion es
* COALESCE la cual tomara algun parametro y retorna el primero valor no Nulo. Los desarrolladores
* T-Sql prefieren usar COALESCE sobre ISNULL porque COALESCE conoce el standard ANSI mientras que 
* ISNULL no.
* SINTAXIS:
* ISNULL(<value>,<replacement>)
* COALESCE(<value1>,<value2>,...,<valueN>)
*/
--3. ISNULL and COALESCE

--3.1 Añade un espacio en blanco despues de FirstName y uno en blanco antes de LastName
SELECT BusinessEntityID, FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName as "Full Name"
FROM   Person.person;

--3-2 Solucionamos el doble espacio entre FirstName y LastName producido en el query 3.1
SELECT BusinessEntityID, FirstName + ISNULL(' ' + MiddleName, '') + ' ' + LastName as "Full Name"
FROM   Person.person;

--3.3 Si MiddleName es NULL, el proximo valor no null, la cadena vacia  es retornado.
SELECT BusinessEntityID, FirstName + COALESCE(' ' + MiddleName, '') + ' ' + LastName as "Full Name"
FROM   Person.person;

