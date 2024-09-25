SELECT 
    b.name AS brand_name,
    EXTRACT(YEAR FROM s.sale_date) AS year,
    ROUND(AVG(s.price - (s.price * s.discount / 100)), 2) AS price_avg
FROM 
    car_shop.sales s
JOIN 
    car_shop.cars c ON s.car_id = c.id
JOIN 
    car_shop.brands b ON c.brand_id = b.id
GROUP BY 
    b.name, year
ORDER BY 
    b.name ASC, year ASC;/*добавьте сюда запрос для решения задания 2*/
