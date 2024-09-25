SELECT 
    b.origin AS brand_origin,
    MAX(s.price - (s.price * s.discount / 100)) AS price_max,
    MIN(s.price - (s.price * s.discount / 100)) AS price_min
FROM 
    car_shop.sales s
JOIN 
    car_shop.cars c ON s.car_id = c.id
JOIN 
    car_shop.brands b ON c.brand_id = b.id
GROUP BY 
    b.origin
ORDER BY 
    b.origin;/*добавьте сюда запрос для решения задания 5*/
