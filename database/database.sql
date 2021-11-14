CREATE TABLE company (
    CompanyID INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT NOT NULL UNIQUE,
    company_description TEXT,
    logo BLOB
);

CREATE TABLE product (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT NOT NULL UNIQUE,
    product_description TEXT,
    CompanyID INTEGER,
    color TEXT,
    weight INTEGER,
    availability INTEGER NOT NULL,
    price INTEGER NOT NULL,
    FOREIGN KEY (CompanyID) REFERENCES company(CompanyID)
);

CREATE TABLE customer (
    CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
    login TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    date_of_birth TEXT,
    last_visit TEXT,
    phone TEXT,
    mail TEXT,
    ip TEXT,
    address TEXT,
    reg_date TEXT
);

CREATE TABLE basket(
    BasketID INTEGER NOT NULL,
    CustomerID INTEGER NOT NULL,
    ProductID INTEGER NOT NULL,
    amount INTEGER NOT NULL,
    comment TEXT,
    delivery_method TEXT,
    payment_method TEXT,
    status TEXT,
    FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID)
    FOREIGN KEY (ProductID) REFERENCES product(ProductID)
);
