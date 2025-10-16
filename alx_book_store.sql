CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE table Authors(
    author_id INT PRIMARY key,
    author_name VARCHAR(215)

);

CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    pulication_date DATE
    Foreign Key (author_id) REFERENCES Authors(author_id)

);

CREATE Table Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE Table Orders(
    order_id int PRIMARY key,
    customer_id int,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
    orderdetailid int PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);