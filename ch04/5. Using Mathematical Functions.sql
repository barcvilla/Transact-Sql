-- Using Mathematical Operators
-- 1.
select 1 + 1 as addition, 10.0/3 as division, 10/3 as [integer division],
10%3 as modulo;

-- 2.
select OrderQty, OrderQty * 10 as Times10 from Sales.SalesOrderDetail;

-- 3. 
select OrderQty * UnitPrice * (1.0 - UnitPriceDiscount) as Calculated, LineTotal
from Sales.SalesOrderDetail;

-- 4. Usamos la funcion ISNULL para sustituir el valor nulo con 1000 cuando MaxQty = NULL
select  SpecialOfferID, MaxQty, DiscountPct, DiscountPct * ISNULL(MaxQty, 1000)
as MaxDiscount from Sales.SpecialOffer;
