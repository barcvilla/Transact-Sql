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

