-- 	ZADANIE 3 - dodaj poniższe pozycje do tabeli Products

-- 	NAME            MANUFACTURER    NETPRICE  VAT    STOCK
-- 	------------    ------------  ----------  ---  -------
-- 	monitor 24''      Dell            999.00   8,  20
-- 	dysk 1TB			    Seagate         350.00  23, 200
-- 	pamięć ram 16GB 	Kingston        140.90   8, 190
-- 	klawiatura PL 	  Dell             90.00  23,  20
-- 	klawiatura EN	    Microsoft        87.00  23,  30
-- 	klawiatura DE 	  Apple            87.00  23,   0
-- 	Mysz bezprzew.		Microsoft        48.35   8, 200
-- 	płyta główna ATX 	Gigabyte        702.00  23,   3
-- 	Nvidia GTX780     Gigabyte        892.00  23,  21

INSERT INTO Products VALUES (1, 'monitor 24\'\'','Dell',999.00, 8,20);

ALTER TABLE Products CONVERT TO CHARACTER SET utf8;

INSERT INTO Products VALUES (3, 'pamięćram 16GB', 'Kingston', 140.90 , 8, 190),
  (4, 'klawiatura PL',	  'Dell', 90.00, 23,  20),
  (5, 'klawiatura EN', 'Microsoft', 87.00,  23,  30),
  (6, 'klawiatura DE', 'Apple', 87.00,  23,   0),
  (7, 'Mysz bezprzew.', 'Microsoft', 48.35, 8, 200),
  (8, 'Nvidia GTX780', 'Gigabyte',  892.00,  23,  21);

SELECT * FROM Products;

DESCRIBE Products;

INSERT Into Products VALUES (NULL, 'płyta główna ATX', NULL,'Gigabyte',  702.00 , 23,   3);