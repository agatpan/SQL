-- ZADANIE 8
-- 	- zmień stan magazynowy dwóch produktów na 1000 sztuk (przyszła dostawa)


UPDATE Products
SET stock = 1000
WHERE name LIKE 'klaw%';

UPDATE Products
SET stock = 0
WHERE id = 8;


-- 	- zmień stan magazynowy dwóch innych produktów, bo właśnie sprzedało się 5 sztuk każdego z nich

UPDATE Products
SET stock = stock-5
WHERE name LIKE 'pami%';

UPDATE Products
SET stock = stock-5
WHERE id = 9;



-- 	- podnieś wszystkie ceny w sklepie o 10%

UPDATE Products
SET netprice = netprice + (netprice*10)/100

SELECT * FROM Products;


