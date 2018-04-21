-- ZADANIE 10
--   - stwórz tabelę Categories z kolumnami (id, name, desc)

Drop TABLE Categories;

CREATE TABLE Categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100)

) CHARACTER SET utf8 COLLATE utf8_general_ci;


--   - dodaj kategorie: monitory, dyski twarde, pamięci ram, klawiatury,
-- myszy bezprzewodowe, obudowy, drukarki

INSERT INTO Categories VALUES (NULL, 'montory'),
  (NULL ,'dyski twarde'),
  (NULL , 'pamieci ram'),
  (NULL , 'klawiatury'),
  (NULL , 'myszy bezprzewodowe'),
  (NULL , 'obudowy'),
  (NULL, 'drukarki');




--   - dodaj kolumnę w Products, która będzie łączyć produkt z
--      odpowiednią kategorią za pomocą klucza obcego (FOREIGN KEY)

DESCRIBE Products;

ALTER TABLE Categories ADD COLUMN description VARCHAR(100) AFTER name;
ALTER TABLE Products ADD FOREIGN KEY (category_id) REFERENCES Categories(id);

SELECT * FROM Products;
SELECT * FROM Categories;

UPDATE Products SET category_id = 5 WHERE name LIKE 'mys%';








