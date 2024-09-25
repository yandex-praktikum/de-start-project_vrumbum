SELECT 
    p.name AS person,
    STRING_AGG(CONCAT(b.name, ' ', c.model), ', ') AS cars
FROM 
    car_shop.purchases pu
JOIN 
    car_shop.people p ON pu.person_id = p.id
JOIN 
    car_shop.cars c ON pu.car_id = c.id
JOIN 
    car_shop.brands b ON c.brand_id = b.id
GROUP BY 
    p.name
ORDER BY 
    p.name ASC;/*добавьте сюда запрос для решения задания 4*/
