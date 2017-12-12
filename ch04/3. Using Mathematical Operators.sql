/*******************************
* Using Mathematical Operators *
*******************************/
-- 1
select 1 + 1 as Addition, 10.0 / 3 as Division,
10 / 3 as [Integer Division], 10 % 3 as Modulo;

-- 2
Select OrderQty, OrderQty * 10 as Times10 from Sales.SalesOrderDetail;

-- 3
select OrderQty * UnitPrice * (1.0 - UnitPriceDiscount) as Calculated,
LineTotal from Sales.SalesOrderDetail;

-- 4. Mostramos como usar la funcion ISNULL() para sustituir el valor 1000 cuando MaxQty es NULL
select SpecialOfferID, MaxQty, DiscountPct, DiscountPct * ISNULL(MaxQty, 1000) as MaxDiscount
from Sales.SpecialOffer;
