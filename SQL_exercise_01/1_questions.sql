-- LINK: https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store
-- 1.1 Select the names of all the products in the store.
SELECT name from products;
-- 1.2 Select the names and the prices of all the products in the store.
SELECT name, price from products;
-- 1.3 Select the name of the products with a price less than or equal to $200.
select name from products where price <= 200;
-- 1.4 Select all the products with a price between $60 and $120.
select * from products where price between 60 and 120;
-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
select name, price * 100 as cents from products;
-- 1.6 Compute the average price of all the products.
select avg(price) as avg_price from products;
-- 1.7 Compute the average price of all products with manufacturer code equal to 2.
select avg(price) as avg_price from products where manufacturer = 2;
-- 1.8 Compute the number of products with a price larger than or equal to $180.
select count(*) from products where price >= 180;
-- 1.9 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
select name, price from products where price >= 180 order by price desc, name asc;
-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.
select * from products join manufacturers on manufacturers.code = products.code;
-- 1.11 Select the product name, price, and manufacturer name of all the products.
select products.name, products.price, manufacturers.price from products join manufacturers on manufacturers.code = products.code;
-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
select manufacturer, avg(price) from products group by manufacturer;
-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.
select manufacturers.name, avg(products.price) from products join manufacturers on products.code = manufacturers.code group by manufacturers.name;
-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.
select manufacturers.name from manufacturers join products on products.code = manufacturers.code where products.price >= 150;
-- 1.15 Select the name and price of the cheapest product.
select name, min(price) from products;
-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product.
select manufacturers.name, products.name, products.price from manufacturers join products on manufacturers.code = products.code order by products.price desc limit 1;
-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
-- 1.18 Update the name of product 8 to "Laser Printer".
-- 1.19 Apply a 10% discount to all products.
-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120
