-- USING BUILT-IN FUNCTIONS AND EXPRESSIONS

--******* Concatenating Strings *******
-- 1.
SELECT 'ab' + 'c';

-- 2. 
SELECT BusinessEntityID, FirstName + ' ' + LastName as "Full Name" FROM Person.Person;

-- 3.
SELECT BusinessEntityID, LastName + ', ' + FirstName as "Full Name" FROM Person.Person;

-- ****** Concatenating Strings and Null *******
-- Cuando concatenamos un Sting con null, null es retornado. El sgte codigo muestra el problema
SELECT BusinessEntityId, FirstName + ' ' + MiddleName + ' ' + LastName as "Full Name" FROM 
	   Person.person;
