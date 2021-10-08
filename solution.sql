/*Activity*/

/*1*/
SELECT customerName FROM customers WHERE country = "Philippines";

/*2*/
SELECT contactLastName, contactFirstName FROM customers WHERE customerName LIKE '%La Rochelle Gifts%';

/*3*/
SELECT productName, MSRP FROM products WHERE productName = "The Titanic";

/*4*/
SELECT firstName, lastName FROM employees WHERE email = "jfirrelli@classicmodelcars.com";

/*5*/
SELECT customerName FROM customers WHERE state IS NULL;

/*6*/
SELECT firstName, lastName, email FROM employees WHERE lastName IN ("Patterson") AND firstName IN ("Steve");

/*7*/
SELECT customerName, country, creditLimit FROM customers WHERE country != "USA" AND creditLimit > 3000; 

/*8*/
SELECT customerName FROM customers WHERE customerName NOT LIKE '%a%';

/*9*/
SELECT customerNumber FROM orders WHERE comments LIKE '%DHL%';

/*10*/
SELECT productLine FROM products WHERE productDescription LIKE "%state of the art%";  

/*11*/
SELECT DISTINCT country FROM customers; 

/*12*/
SELECT DISTINCT status FROM orders;

/*13*/
SELECT customerName, country FROM customers WHERE country IN ("USA", "France", "Canada");

/*14*/
SELECT employees.firstName, employees.lastName, offices.city FROM employees JOIN offices ON employees.officeCode = offices.officeCode WHERE city = "Tokyo";

/*15*/
SELECT customerName FROM customers JOIN employees ON salesRepEmployeeNumber = employees.employeeNumber WHERE employeeNumber = 1166;

/*16*/
SELECT productName, customers.customerName FROM products JOIN orderdetails ON products.productCode = orderdetails.productCode JOIN orders ON orderdetails.orderNumber = orders.orderNumber JOIN customers ON orders.customerNumber = customers.customerNumber WHERE customers.customerName = "Baane Mini Imports"; 

/*17*/
SELECT employees.firstName, employees.lastName, customers.customerName, offices.country FROM employees JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber JOIN offices ON employees.officeCode = offices.officeCode;

/*18*/
SELECT firstName, lastName FROM employees WHERE reportsTo = 1143;

/*19*/
SELECT productName, MSRP FROM products ORDER BY MSRP DESC;

/*20*/
SELECT COUNT(*) FROM customers WHERE country = "UK";

/*21*/
SELECT productLine, COUNT(*) FROM products GROUP BY productLine;

/*22*/
SELECT employees.firstName, employees.lastName, COUNT(*) FROM customers JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber GROUP BY salesRepEmployeeNumber; 

/*23*/
SELECT products.productName, products.quantityInStock FROM products JOIN productLines ON products.productLine = productLines.productLine WHERE products.productLine IN ("planes") AND products.quantityInStock < 1000;




