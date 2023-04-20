-- Get top record with max amont
select * from transaction order by amount desc limit 1;

-- Get transaction statistics for each date for transaction amount more than 10
SELECT count(id) as TxnCount, DATE(date_time) as TxnDate, SUM(amount) as Total
FROM transaction
GROUP BY TxnDate
HAVING Total > 10
ORDER by TxnDate DESC;

select * from transaction;