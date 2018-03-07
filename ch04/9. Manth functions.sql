/* FUNCIONES MATEMATICAS */

/*
* POW: retorna la potencia de un numero
*/
select power(10, 1) as [ten to the first],
	   power(10, 2) as [then to the second],
	   power(10, 3) as [ten to the third];


/*
* SQUARE: Retorna la raiz cuadrada.
*/
select square(10) as [square of 10],
	   sqrt(10) as [square root of 10],
	   sqrt(SQUARE(10)) as [the square root of the square of 10];

/*
* ROUND: Esta funcion permite redondear un numero a una precision dada. ROUND se usa 
*        frecuentemente para mostrar el numero de espacio decimal requerido en un reporte
*/
select round(1234.1294,2) as [2 places on the right],
	   round(1234.1294,-2) as [2 places on the left],
	   round(1234.1294,2,1) as [truncate 2],
	   round(1234.1294,-2,1) as [truncate -2];

/*
* RAND: retorna un valor flotante entre 0 y 1. Rand se utiliza para generar numero aleatorios
*/
select cast(rand() * 100 as int) + 1 as [1 to 100],
	   cast(rand() * 1000 as int) + 900 as [900 to 1900],
	   cast(rand() * 5 as int) + 1 as [1 to 5];

select rand(3), rand(), rand();

select rand(), rand(), rand() from sys.objects;
