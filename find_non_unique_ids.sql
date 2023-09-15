SELECT id, COUNT(id) 
FROM your_table_name 
GROUP BY id 
HAVING COUNT(id) > 1;
