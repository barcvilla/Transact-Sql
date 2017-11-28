SELECT OrderDate, COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader
WHERE Status = 5
GROUP BY OrderDate
HAVING COUNT(SalesOrderID) > 1
ORDER BY OrderDate DESC;
