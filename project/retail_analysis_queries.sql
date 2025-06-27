
-- 1. Profitability by Product Category
SELECT Product_Category, 
       SUM(Revenue) AS Total_Revenue,
       SUM(Cost) AS Total_Cost,
       SUM(Profit) AS Total_Profit,
       ROUND(AVG(Profit / Revenue), 2) AS Avg_Profit_Margin
FROM retail_data
GROUP BY Product_Category
ORDER BY Total_Profit DESC;

-- 2. Profitability by Sub-Category
SELECT Product_Category, Sub_Category,
       SUM(Revenue) AS Total_Revenue,
       SUM(Profit) AS Total_Profit
FROM retail_data
GROUP BY Product_Category, Sub_Category
ORDER BY Total_Profit DESC;
