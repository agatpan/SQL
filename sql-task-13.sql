-- ZADANIE 13
--   - wyświetl produkty, które nie mają przypisanej żadnej kategorii

SELECT *
  FROM Products;

SELECT name
  FROM Products
  WHERE category_id IS NULL ;

--   - wyświetl kategorie, do których nie jest przypisany żaden produkt

SELECT Categories.name, Products.name
FROM Categories LEFT JOIN Products ON Categories.id = Products.category_id
  WHERE Products.name IS NULL ;

