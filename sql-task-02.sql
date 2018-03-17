-- ZADANIE 2 - do Products dodaj stawkę VAT oraz
-- liczbę sztuk w magazynie (vat, stock)

DESCRIBE Products;
ALTER TABLE Products ADD COLUMN vat TINYINT;
  ALTER TABLE Products ADD COLUMN stock SMALLINT;
