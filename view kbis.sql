USE [Salesx]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[KBIs] as 
select 
f.Date_key as Date_key,
SUM(F.Sales) / NULLIF( COUNT(Distinct F.order_key),0) AS ATV ,
SUM(F.quantity) / NULLIF( COUNT(Distinct F.order_key),0) AS UPT,
sum (SUM(SALES)) OVER(ORDER BY DATE_KEY)AS Runing_Sales ,
SUM(sum(sales)) over (order by date_key rows BETWEEN 6 PRECEDING AND CURRENT ROW ) AS ROOLING_7_DAYS,
SUM(SUM(SALES)) OVER (order by date_key rows between 29 preceding and current row) as rooling_30_days
from FactSales as f
group by 
f.Date_key ;
GO

