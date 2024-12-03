CREATE DATABASE ops_db;

USE ops_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    tel VARCHAR(15),
    location VARCHAR(255),
    date DATE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    des TEXT,
    stock INT,
    image VARCHAR(255),
    user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE `order` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    user_id INT,
    qty INT,
    total DECIMAL(10, 2),
    date DATE,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
