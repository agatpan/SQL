-- ZADANIE 5
-- 	- wyświetl produkty, których cena wynosi więcej niż 100 zł

SELECT * FROM Products WHERE netprice >100;

--    i są dostępne aktualnie na magazynie

SELECT * FROM Products WHERE netprice >100 AND stock IS NOT NULL;-- stock != 0;

-- 	- wyświetl produkty, których stawka VAT to 23%

SELECT * FROM Products WHERE vat = 23;

-- 	- wyświetl produkty, które w nazwie mają słowo "klawiatura"

SELECT  * FROM Products WHERE name LIKE '%awiatura%';

-- 	- wyświetl nazwy produktów, których jest w magazynie od 1 do 30 sztuk

SELECT * FROM Products WHERE stock BETWEEN 1 and 30;

