INSERT INTO car_shop.cars (model, brand_id)
SELECT DISTINCT 
    auto, 
    b.id 
FROM raw_data.sales r
JOIN car_shop.brands b ON r.brand_origin = b.name;

INSERT INTO car_shop.colors (color_name)
VALUES ('Red'), ('Blue'), ('Black'), ('White'), ('Green');

INSERT INTO car_shop.car_colors (car_id, color_id)
SELECT c.id, 1
FROM car_shop.cars c;

INSERT INTO car_shop.sales (car_id, sale_date, person_name, phone, price, discount)
SELECT 
    c.id, 
    date, 
    person_name, 
    phone, 
    price, 
    discount
FROM raw_data.sales r
JOIN car_shop.cars c ON r.auto = c.model;

INSERT INTO car_shop.brands (name)
SELECT DISTINCT brand_origin
FROM raw_data.sales
WHERE brand_origin IS NOT NULL AND brand_origin <> ''
ON CONFLICT (name) DO NOTHING;/*Добавьте в этот файл запросы, которые наполняют данными таблицы в схеме автосалона*/
