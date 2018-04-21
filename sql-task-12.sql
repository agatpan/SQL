-- ZADANIE 12
--   - wyświetl listę wszystkich kategorii i odpowiadającą im liczbę produktów w sklepie

SELECT Categories.name, COUNT(Products.stock) AS liczba_op
  FROM Categories LEFT JOIN Products
    ON Categories.id = Products.category_id
GROUP BY Categories.name
ORDER BY liczba_op DESC;



--   - wyświetl listę wszystkich produktów i odpowiadające im kategorie, jeśli są przypisane

SELECT Products.name,  Categories.name
FROM Categories RIGHT JOIN Products
  ON Categories.id = Products.category_id
ORDER BY Products.name;


--   - średnia cena produktu w każdej kategori (lista: ŚREDNIA CENA + NAZWA KATEGORII)

SELECT Categories.name, avg(Products.netprice) as średnia_cena
  FROM Products Right JOIN Categories
    ON Products.category_id = Categories.id
GROUP BY Categories.name

