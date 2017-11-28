/* Filtering on Date and Time Columns */
Use sampledb;
SELECT ID, MyDate, MyValue FROM DateTimeExample 
WHERE MyDate BETWEEN '2009-01-03 00:00:00' AND '2009-01-03 23:59:59';

