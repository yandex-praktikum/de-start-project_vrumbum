SELECT 
    (COUNT(*) FILTER (WHERE gasoline_consumption IS NULL)::DECIMAL / 
     COUNT(*)) * 100 AS nulls_percentage_gasoline_consumption
FROM 
    raw_data.sales;/*добавьте сюда запрос для решения задания 1*/
