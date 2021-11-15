INSERT INTO company ('company_name', 'company_description') VALUES
('clever', 'the best choice for students');

INSERT INTO company ('company_name', 'company_description') VALUES
('home comfort', 'the best choice for aged people');

INSERT INTO company ('company_name', 'company_description') VALUES
('apple', 'best electrical goods');

INSERT INTO product ('product_name', 'product_description',	'CompanyID',	'color',	'weight',	'availability',  'price') VALUES
('Iphone X', 'best phone ever', 3, 'blue', 300, 10, 60000);

INSERT INTO product ('product_name', 'product_description',	'CompanyID',	'weight',	'availability',  'price') VALUES
('books', 'set of books', 1, 1000, 3, 700);

INSERT INTO product ('product_name', 'product_description',	'CompanyID',	'color',	'weight',	'availability',  'price') VALUES
('pen', 'blue pen', 1, 'blue', 30, 100, 10);

INSERT INTO product ('product_name', 'product_description',	'CompanyID',	'color',	'weight',	'availability',  'price') VALUES
('hat', 'great hat', 2, 'red', 100, 12, 1000);

INSERT INTO customer ('login',	'password',	'date_of_birth',	'last_visit',	'phone',	'mail',	'ip',	'address',	'reg_date') VALUES
('mart12', '123qwe', '12-02-1993', '10-11-2021', '+72981233344', 'aqwe@gmail.com', '149.34.24.208', 'Москва, Первомайская 12-32', '30-10-2020');

INSERT INTO customer ('login',	'password',	'date_of_birth',	'last_visit',	'phone',	'mail',	'ip',	'address',	'reg_date') VALUES
('ads124', 'sldkf', '12-05-1994', '10-10-2021', '+79843454432', 'alood@gmail.com', '181.221.0.23', 'Москва, Дорожная 11-40', '10-03-2021');

INSERT INTO customer ('login',	'password',	'date_of_birth',	'last_visit',	'phone',	'mail',	'ip',	'address',	'reg_date') VALUES
('log43', 'qwpeo1', '13-01-2001', '13-10-2021', '+71238576644', 'looola@gmail.com', '205.137.128.35', 'Москва, Полянка 10-2', '11-10-2021');

INSERT INTO customer ('login',	'password',	'date_of_birth',	'last_visit',	'phone',	'mail',	'ip',	'address',	'reg_date') VALUES
('bro7', 'qweqwe1123', '17-03-1993', '02-11-2021', '+70093901200', 'friend@yandex.ru', '122.107.244.4', 'Москва, Тульская 1-3', '02-11-2021');

INSERT INTO customer ('login',	'password',	'date_of_birth',	'last_visit',	'phone',	'mail',	'ip',	'address',	'reg_date') VALUES
('logic', '1opoasdp2', '01-02-1990', '03-11-2021', '+74678879912', 'legal@gmail.com', '135.108.34.97', 'Москва, Горчакова 131-210', '10-01-2021');

INSERT INTO basket ('BasketID', 'CustomerID',	'ProductID',	'amount',	'delivery_method',	'payment_method',	'status') VALUES
(1, 2, 3, 10, 'pickup', 'card', 'closed');

INSERT INTO basket ('BasketID', 'CustomerID',	'ProductID',	'amount',	'delivery_method',	'payment_method',	'status') VALUES
(1, 2, 4, 1, 'pickup', 'card', 'closed');

INSERT INTO basket ('BasketID', 'CustomerID',	'ProductID',	'amount',	'delivery_method',	'payment_method',	'status') VALUES
(2, 4, 1, 1, 'courier', 'card', 'ready to move');
