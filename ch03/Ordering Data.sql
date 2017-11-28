-- Sorting Data --
/**
* El ordenamiento por defecto es ascendente. Podemos especificar ordenamiento descendente mediante
* DESCENDING o DESC despues del nombre de la columna
* Cuando NULL values son parte del resultado ellos seran mostrados primero cuando se ordena de manera
* descendente. 
*/

-- 1. 
SELECT ProductID, LocationID FROM Production.ProductInventory ORDER BY	LocationID;

-- 2.
SELECT ProductID, LocationID FROM Production.ProductInventory ORDER BY ProductID, LocationID DESC;

-- 3.
SELECT BusinessEntityID, LastName, FirstName, MiddleName FROM Person.Person
ORDER BY LastName DESC, FirstName DESC, MiddleName DESC;
