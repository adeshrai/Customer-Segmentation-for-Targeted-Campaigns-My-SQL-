create database  RFM;
use  RFM;
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers FROM customers;
SELECT COUNT(Transaction_ID), Customer_ID FROM transactions GROUP BY Customer_ID;
SELECT MIN(Transaction_Amount), MAX(Transaction_Amount), AVG(Transaction_Amount) FROM transactions;

 #**********Recency Calculation*****************
 SET SQL_SAFE_UPDATES = 0;
 UPDATE transactions
SET Transaction_Date = TO_DATE(Transaction_Date, 'DD-MM-YYYY');
SELECT 
    Customer_ID, 
    DATEDIFF(CURRENT_DATE, MAX(Transaction_Date)) AS Recency
FROM transactions
GROUP BY Customer_ID;
#************Frequency Calculation********************

select Customer_ID , count(Transaction_ID) as Frequency 
from transactions 
group by Customer_ID
order by Frequency desc ;

#*************** Monetary Calculation**************


SELECT 
    Customer_ID, 
    SUM(Transaction_Amount) AS Monetary
FROM transactions
GROUP BY Customer_ID;

#**********Combine Recency, Frequency, and Monetary (RFM) Values**********


SELECT 
    r.Customer_ID,
    r.Recency,
    f.Frequency,
    m.Monetary
FROM 
    (SELECT Customer_ID, DATEDIFF(CURRENT_DATE, MAX(Transaction_Date)) AS Recency 
     FROM transactions 
     GROUP BY Customer_ID) r
JOIN 
    (SELECT Customer_ID, COUNT(Transaction_ID) AS Frequency 
     FROM transactions 
     GROUP BY Customer_ID) f
ON r.Customer_ID = f.Customer_ID
JOIN 
    (SELECT Customer_ID, SUM(Transaction_Amount) AS Monetary 
     FROM transactions 
     GROUP BY Customer_ID) m
ON r.Customer_ID = m.Customer_ID;


SELECT 
    Customer_ID, 
    CASE 
        WHEN Recency <= 600 AND Frequency > 8 AND Monetary > 2000 THEN 'High Value'
        WHEN Recency <= 1200 AND Frequency BETWEEN 4 AND 8 AND Monetary BETWEEN 1000 AND 2000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Customer_Segment
FROM (
    SELECT 
        r.Customer_ID,
        r.Recency,
        f.Frequency,
        m.Monetary
    FROM 
        (SELECT Customer_ID, DATEDIFF(CURRENT_DATE, MAX(Transaction_Date)) AS Recency 
         FROM transactions 
         GROUP BY Customer_ID) r
    JOIN 
        (SELECT Customer_ID, COUNT(Transaction_ID) AS Frequency 
         FROM transactions 
         GROUP BY Customer_ID) f
    ON r.Customer_ID = f.Customer_ID
    JOIN 
        (SELECT Customer_ID, SUM(Transaction_Amount) AS Monetary 
         FROM transactions 
         GROUP BY Customer_ID) m
    ON r.Customer_ID = m.Customer_ID
) AS RFM_Data;



