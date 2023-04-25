-- Get top record with max amont
select * from transaction order by amount desc limit 1;

-- Get transaction statistics for each date for transaction amount more than 10
SELECT count(id) as TxnCount, DATE(date_time) as TxnDate, SUM(amount) as Total
FROM transaction
GROUP BY TxnDate
HAVING Total > 10
ORDER by TxnDate DESC;

select * from transaction;

-- Sample, how we can concatenate fields into one text field
SELECT GROUP_CONCAT(id) AS ids, DATE(date_time) as TxnDate FROM transaction  GROUP BY TxnDate;
                
-- https://dev.mysql.com/blog-archive/mysql-8-0-2-introducing-window-functions/
select * from 
(SELECT id, amount, date_time, ROW_NUMBER()
 OVER (PARTITION BY DATE(date_time) order by amount desc) AS RowNum 
 FROM transaction
) as Limited 
WHERE RowNum < 3
Order by date_time desc;

