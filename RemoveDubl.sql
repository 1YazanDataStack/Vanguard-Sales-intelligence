With Dub as ( 
Select 
Customer_Id ,
ROW_NUMBER() OVER (PARTITION BY Customer_id order by Customer_id ) as Row_Num
from DimCustomers )
select * from Dub 
where Row_Num > 1 ;
-----------------------------
--Q2
Select 
Customer_id ,
COUNT(*) as Count_n 
from DimCustomers 
group by Customer_id 
having COUNT(*) > 1 ;
