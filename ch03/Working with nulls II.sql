-- WORKING WITH NULL VALUES --

Use AdventureWorks2014;
-- 1. Retorna 19,972 filas
SELECT MiddleName FROM Person.Person;

-- 2. Retorna 291 filas
SELECT MiddleName FROM Person.Person WHERE MiddleName = 'B';

-- 3. Retorna 11,182 pero 19,681 se esperaban
SELECT MiddleName FROM Person.Person WHERE MiddleName != 'B';

-- 4. Retorna 19,681
SELECT MiddleName FROM Person.Person WHERE MiddleName IS NULL OR MiddleName !='B';
