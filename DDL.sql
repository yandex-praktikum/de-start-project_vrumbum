CREATE SCHEMA car_shop;

CREATE TABLE car_shop.brands (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE /* Название бренда может содержать буквы и цифры */
);

CREATE TABLE car_shop.cars (
    id SERIAL PRIMARY KEY,
    model VARCHAR(255) NOT NULL, /* Модель автомобиля, может содержать буквы и цифры */
    brand_id INT NOT NULL, /* Внешний ключ для связи с таблицей brands */
    FOREIGN KEY (brand_id) REFERENCES car_shop.brands(id)
);

CREATE TABLE car_shop.colors (
    id SERIAL PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL UNIQUE /* Название цвета, может быть уникальным */
);

CREATE TABLE car_shop.car_colors (
    car_id INT NOT NULL,
    color_id INT NOT NULL,
    PRIMARY KEY (car_id, color_id),
    FOREIGN KEY (car_id) REFERENCES car_shop.cars(id),
    FOREIGN KEY (color_id) REFERENCES car_shop.colors(id)
);

CREATE TABLE car_shop.sales (
    id SERIAL PRIMARY KEY,
    car_id INT NOT NULL,
    sale_date DATE NOT NULL, /* Дата продажи автомобиля */
    person_name VARCHAR(255) NOT NULL, /* Имя покупателя */
    phone VARCHAR(15) NOT NULL UNIQUE, /* Телефон покупателя может быть уникальным */
    price NUMERIC(9, 2) NOT NULL, /* Цена автомобиля */
    discount NUMERIC(5, 2), /* Скидка на автомобиль */
    FOREIGN KEY (car_id) REFERENCES car_shop.cars(id)
);/*Добавьте в этот файл все запросы, для создания схемы данных автосалона и
 таблиц в ней в нужном порядке*/
