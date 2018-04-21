-- ZADANIE 7
-- 	- wyświetl zestawienie sumarycznych kwot netto dla każdej stawki VAT w
--    formie RAZEM NETTO, STAWKA VAT

SELECT sum(netprice) as "RAZEM NETTO", vat as "STAWKA VAT" FROM Products GROUP BY vat;

-- 	- ogranicz zestawienie sumaryczne tylko do tych produktów,
--    których dostępność w magazynie jest > 100

SELECT sum(netprice) as "RAZEM NETTO", vat as "STAWKA VAT" FROM Products WHERE stock >100 GROUP BY vat ;

-- 	- wyświetl minimalną, maksymalną oraz średnią cenę produktów w sklepie

SELECT min(netprice) as "cena minimalna", max(netprice) as "cena maksymalna",
  avg(netprice) as "średnia cena" FROM Products;

-- 	- wyświetl listę producentów wraz z ich liczbą produktów w ofercie sklepu

SELECT manufacturer, sum(stock) FROM Products GROUP BY manufacturer;

