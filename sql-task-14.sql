-- ZADANIE 14
--   - wyświetl nazwy produktów wraz z ich cenami brutto (netto + vat)

SELECT name, ROUND(netprice * (1+vat/100), 2) as cena_brutto
FROM Products ;

--   - wyświetl nazwy produktów oraz przy każdej z nich wartość netto
--     towaru w magazynie (liczba sztuk * cena netto)

SELECT name, ROUND(stock * netprice, 2) AS war_netto_towaru_namagazynie
FROM Products;
