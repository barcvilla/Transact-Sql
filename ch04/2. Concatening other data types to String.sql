/********************************************
* Concatenando otros tipos de datos a Strin *
********************************************/
/*
* Para concatenar un valor nostring a string, el valor nostring debe ser convertido a string
* si el valor puede ser convertido implicitamente a numero, el valor sera adicionado.
*/
select 1 + '1'; -- retorna 2

select cast(1 as nvarchar) + '1'; -- retorna 11

-- 1
select cast(BusinessEntityID as nvarchar) + ': ' + LastName + ', ' + FirstName as ID_Name
from Person.Person;

-- 2
select convert(nvarchar(10), BusinessEntityID) + ': ' + LastName + ', ' + FirstName as ID_Name
from Person.person;

-- 3
select BusinessEntityID, BusinessEntityID + 1 as 'Adds 1',
cast(BusinessEntityID as nvarchar(10)) + '1' as "Appends 1"
from Person.person;



