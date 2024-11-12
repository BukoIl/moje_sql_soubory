SELECT manufacturer
FROM SQL1.manufacturers
ORDER BY manufacturer ASC
FETCH FIRST 5 ROWS ONLY;

SELECT product, pricenew, segment
FROM SQL1.products
WHERE segment = 'Youth'
ORDER BY pricenew DESC;

/*
SELECT productid AS Produkt, revenue AS Tržba, calendarid AS datum, units AS kusy,
    revenue / units AS Cena_za_kus
FROM SQL1.sales
WHERE revenue BETWEEN 1800 AND 1900
AND TO_CHAR (calendarid, 'MM')= '02';
*/

SELECT productid AS Produkt, calendarid AS datum, revenue / units AS Tržba_za_kus
FROM SQL1.sales
WHERE revenue BETWEEN 1800 AND 1900
AND TO_CHAR (calendarid, 'MM')= '02'; 

