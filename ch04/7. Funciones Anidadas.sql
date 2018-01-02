-- FUNCIONES ANIDADAS --
-- Podemos anidar las funciones como por ejemplo: LTRIM(RTRIM('  test  '))
select EmailAddress,
SUBSTRING(EmailAddress, CHARINDEX('@', EmailAddress) + 1, 50) as 'DOMAIN'
from Production.ProductReview;

select physical_name,
RIGHT(physical_name, CHARINDEX('\', REVERSE(physical_name)) -1 ) as 'FileName'
from sys.database_files;
