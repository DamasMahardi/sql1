SELECT
firstName, lastName
FROM
employees;


UPDATE employees
SET extension='x2312100'
WHERE email='mgerard@classicmodelcars.com'


SELECT
o.officeCode,
e.firstName,
e.lastName,
e.email,
e.extension,
e.jobTitle
FROM
employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;


SELECT
o.officeCode,
e.firstName,
e.lastName,
e.email,
e.extension,
e.jobTitle
FROM
employees e
LEFT JOIN offices o
ON e.officeCode = o.officeCode;




SELECT
e.firstName,
COUNT(e.employeeNumber) tescount,
e.lastName,
e.email,
e.extension,
e.jobTitle,
p.amount
FROM
employees e
LEFT JOIN payments p
ON
e.employeeNumber= p.customerNumber
GROUP BY
e.employeeNumber,
e.firstName,
e.lastName,
e.email,
e.extension,
e.jobTitle,
p.amount;




SELECT
firstName,
lastName,
email,
extension,
jobTitle
FROM
employees
WHERE
firstName LIKE '%T%'
ORDER BY
firstName, lastname DESC;

SELECT * FROM employees;




SELECT
orderNumber,
orderDate,
requiredDate,
shippedDate,
`status`,
comments,
customerNumber
FROM 
orders
WHERE 
customerNumber BETWEEN 100 AND 300;
ORDER BY 
customerNumber;




SELECT 
ROUND(AVG(DISTINCT amount), 2)
FROM
payments
GROUP BY
customerNumber;

-- Menutup kursor yang sudah ada (jika ada)
CLOSE avgsalary;

-- Membuat kursor baru
DECLARE avgsalary CURSOR FOR SELECT AVG(amount) FROM payments;

-- Membuka kursor
OPEN avgsalary;

-- Mengambil nilai kursor
FETCH avgsalary;

-- Menutup kursor
CLOSE avgsalary;
