-- ZADANIE 6
-- 	- wyświetl dostępne produkty w kolejności od najtańszego

SELECT * FROM Products WHERE stock >0  ORDER BY netprice ;

-- 	- wyświetl nazwy trzech najdroższych produktów

SELECT name as NAZWA FROM Products ORDER BY netprice DESC LIMIT 3;
