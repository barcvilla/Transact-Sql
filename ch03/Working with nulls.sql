-- Null values = 0
SELECT Name, ISNULL(Size, 0) AS NumericSize
FROM Production.Product;
