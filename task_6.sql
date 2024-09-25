SELECT 
    COUNT(*) AS persons_from_usa_count
FROM 
    car_shop.people
WHERE 
    phone_number LIKE '+1%';/*добавьте сюда запрос для решения задания 6*/
