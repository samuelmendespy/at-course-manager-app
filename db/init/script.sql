CREATE DATABASE IF NOT EXISTS api;
USE api;

CREATE TABLE IF NOT EXISTS cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO cursos (name, price)
VALUES
    ('Angular 14', 35.00),
    ('Javascript ES7', 91.00),
    ('Java SE', 430.00);