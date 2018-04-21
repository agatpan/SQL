-- ZADANIE 11
--   - wyświetl listę produktów w formie trzech kolumn
--     (nazwa produktu, kategoria, cena netto) posortowaną po nazwie kategorii

SELECT Products.name,Categories.name, Products.netprice
  FROM Products,
        Categories
  WHERE Categories.id = Products.category_id
  ORDER BY Categories.name;

SELECT Products.name, Categories.name, Products.netprice
FROM Products INNER JOIN Categories
ON Products.category_id = Categories.id
ORDER BY Categories.name;




--   - ogranicz tę listę tylko do klawiatur i myszy

SELECT Products.name, Categories.name, Products.netprice
  FROM Products,
    Categories
    WHERE Categories.id = Products.category_id AND
      Categories.name in ('klawiatury', 'myszy bezprzewodowe')
    ORDER BY Categories.name;



--   - wyświetl stan magazygnowy dla każdej kategorii - lista w formie
--     (nazwa kategorii, liczba sztuk)

SELECT  Categories.name, sum(Products.stock)
  FROM Categories, Products
    WHERE Categories.id = Products.category_id
GROUP BY Categories.name;


