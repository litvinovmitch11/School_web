UPDATE customer SET reg_date = SUBSTR(reg_date, 7, 4) || '-' || SUBSTR(reg_date, 4, 2) || '-' ||
SUBSTR(reg_date, 1, 2);


SELECT login, MAX(reg_date) AS 'last_reg' FROM customer;


UPDATE customer SET date_of_birth = SUBSTR(date_of_birth, 7, 4) || '-' || SUBSTR(date_of_birth, 4, 2) || '-' ||
SUBSTR(date_of_birth, 1, 2);
UPDATE customer SET last_visit = SUBSTR(last_visit, 7, 4) || '-' || SUBSTR(last_visit, 4, 2) || '-' ||
SUBSTR(last_visit, 1, 2);
SELECT DISTINCT(SUBSTR(date_of_birth, 1, 4)) FROM customer;


/* уникалных товаров */
SELECT COUNT(*) AS 'total_items' FROM product;
/* всего (неуникалных) товаров */
SELECT SUM(availability) AS 'total_items' FROM product;


SELECT (julianday('now') - AVG(julianday(date_of_birth)))/365 as 'average_age' FROM customer WHERE julianday('now')-julianday(reg_date)<61;
