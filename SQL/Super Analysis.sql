-- Total Sales 
SELECT SUM(Sales) As Total_sales FROM Superstore_analysis2;


-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Superstore_analysis2;

--Sales By Category
SELECT Category,SUM(Sales) as Total_sales
FROM Superstore_analysis2
GROUP By Category 
Order By Total_sales DESC;

-- Highest Profit By Category
SELECT TOP 1 Category ,SUM(Profit) as TotalProfit FROM Superstore_analysis2
Group by Category
Order by TotalProfit DESC;

--Highest Sales By Region 

SELECT Top 1  Region ,SUM(Sales ) as highestsales from Superstore_analysis2
Group by Region
Order By highestsales DESC;

--Highest Profit By Region

SELECT Top 1  Region ,SUM(Profit ) as highestprofit from Superstore_analysis2
Group by Region
Order By highestprofit DESC;

--Sales By year
select Order_year ,SUM(Sales) as Total_sales from Superstore_analysis2
Group By Order_Year
Order by Order_Year;

--Sales by segement who buys the most 
Select Segment ,SUM(Sales) as Who_Buy_most from Superstore_analysis2
Group By Segment
Order By Who_Buy_most Desc ;

-- Best Selling Products
Select Top 10 Product_Name , Sum (Sales) as Sales from Superstore_analysis2
Group by Product_Name
Order By Sales DESC;

--loss Making Products
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM Superstore_analysis2
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;

--Analyze The Monthly Sales Trend

Select Order_year , Order_month ,SUM(Sales) as Monthly_Sales 
From Superstore_analysis2
Group By Order_year,Order_month;

--Profit Margin By Category 
Select Category ,
Sum(Sales) as TotalSales,
Sum(Profit) as TotalProfit,
Sum(Profit)/Sum(Sales) as ProfitMargin
From Superstore_analysis2
Group By Category
Order By ProfitMargin;

--Top 5 Customers By Sales
Select  TOP 5 Customer_Name ,Sum(Sales)as TotalSales
From Superstore_analysis2
Group By Customer_Name
Order By TotalSales DESC;

--High Shipping Mode revenue
Select Ship_Mode ,Sum(Sales) as Total_Sales,
Sum(Profit) as Total_Profit
From Superstore_analysis2
Group By Ship_Mode
Order By Total_Sales;

-- Average Order Value By Segement
Select Segment ,AVG(Sales) as Avg_Order_Value
From Superstore_analysis2
Group By Segment 
Order By Avg_Order_Value;
