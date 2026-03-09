
-- Customer Churn Analysis Queries

SELECT Contract, COUNT(*) AS Total_Customers, SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customers
GROUP BY Contract;

SELECT PaymentMethod, SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM customers
GROUP BY PaymentMethod;
