-- Все id заказов, сделанных пользователем с оперделенным id
SELECT DISTINCT BasketID FROM basket WHERE CustomerID = 2;

-- Количество заказов, сделанных пользователем с оперделенным id
SELECT count(*) FROM
	(SELECT DISTINCT BasketID FROM basket WHERE CustomerID = 2);

-- Название компании-производителся товара с указанным именем
SELECT company_name FROM company WHERE CompanyID =
	(SELECT CompanyID FROM product WHERE product_name = 'hat');

-- Вывод количества предметов в заказе с определенным id
SELECT sum(amount) FROM
	(SELECT amount FROM basket WHERE BasketID = 1);

-- Содержание последнего заказа пользователя с оперделенным id
SELECT product_name, amount FROM product JOIN
	(SELECT ProductID, amount FROM basket WHERE BasketID =
		(SELECT max(BasketID) FROM basket WHERE CustomerID = 2)) as new
ON product.ProductID = new.ProductID;
