-- ZADANIE 9 - usuń produkty, których stan magazynowy wynosi 0

DELETE FROM Products where stock = 0;

SELECT * FROM Products;