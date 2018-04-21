-- ZADANIE 4
-- 	- wyświetl wszystkie produkty w formie NAZWA, CENA NETTO, CENA BRUTTO

SELECT name as NAZWA, netprice as "CENA NETTO",
  ROUND(netprice+(netprice*vat)/100, 2) as "CENA BRUTTO" FROM Products;

-- 	- wyświetl listę nazw produktów

SELECT name FROM Products;

-- 	- wyświetl ceny produktów bez powtórzeń

SELECT DISTINCT netprice FROM Products;

