-- ZADANIE 1 - utwórz tablicę Products z kolumnami id, name, manufacturer, price
DROP TABLE Products;

CREATE DATABASE infoshare;
Use infoshare;


CREATE TABLE Products (
  id INT,
  name VARCHAR(100),
  manufacturer VARCHAR(100),
  netprice DECIMAL(7,2)
);
