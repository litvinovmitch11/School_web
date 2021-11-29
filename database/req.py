import sqlite3

conn = sqlite3.connect('database.db')
cursor = conn.cursor()

name_id = int(input())
name_product = input()
basket_id = int(input())

# Все id заказов, сделанных пользователем с оперделенным id
cursor.execute(f"SELECT DISTINCT BasketID FROM basket WHERE CustomerID = {name_id}")
print(cursor.fetchall())

# Количество заказов, сделанных пользователем с оперделенным id
cursor.execute(f"SELECT count(*) FROM \
    (SELECT DISTINCT BasketID FROM basket WHERE CustomerID = {name_id});")
print(cursor.fetchall())

# Название компании-производителся товара с указанным именем
cursor.execute(f"SELECT company_name FROM company WHERE CompanyID = \
	(SELECT CompanyID FROM product WHERE product_name = '{name_product}');")
print(cursor.fetchall())

# Вывод количества предметов в заказе с определенным id
cursor.execute(f"SELECT sum(amount) FROM \
	(SELECT amount FROM basket WHERE BasketID = {basket_id});")
print(cursor.fetchall())

# Содержание последнего заказа пользователя с оперделенным id
cursor.execute(f"SELECT product_name, amount FROM product JOIN \
	(SELECT ProductID, amount FROM basket WHERE BasketID = \
		(SELECT max(BasketID) FROM basket WHERE CustomerID = {name_id})) as new \
ON product.ProductID = new.ProductID;")
print(cursor.fetchall())

conn.close()
