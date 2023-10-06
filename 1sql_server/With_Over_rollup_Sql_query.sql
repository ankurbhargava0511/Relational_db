--select * from testTable



--SELECT year_sales, month_sales,  
--SUM(amount) over(partition by year_sales, month_sales order by year_sales, month_sales ) as Total,
--Row_number() over(partition by year_sales, month_sales order by year_sales, month_sales  ) as Rownum,
--Rank() over(partition by year_sales, month_sales order by year_sales, month_sales ) as Rk,
--Dense_rank() over(partition by year_sales, month_sales order by year_sales, month_sales ) as d_rank
--FROM Sales_Data
--WHERE 1=1

--with tblSales (year_sales, month_sales, Total) 
--As
--(SELECT distinct year_sales, month_sales ,
--SUM(amount) over(partition by year_sales, month_sales order by year_sales, month_sales ) as Total
--FROM Sales_Data 
--)
--Select year_sales, month_sales,Total,
--Row_number() over(partition by year_sales order by total desc  ) as Rownum,
--Rank() over(partition by year_sales order by year_sales  ) as Rk,
--Dense_rank() over(partition by year_sales order by year_sales  ) as d_rank
--from tblSales




--SELECT distinct year_sales, month_sales, sum(amount) Total,
--Grouping(year_sales),
--Grouping_id(year_sales,month_sales)
--FROM Sales_Data 
--Group by rollup (year_sales, month_sales)
--order by year_sales, month_sales

--use Learning_Sql

--select distinct month_sales  from Sales_Data
--Go

With tbl (year_sales, month_sales, amount) 
as ( select year_sales, month_sales, amount from Sales_Data)
select year_sales,

isnull([Jan],0) as Jan,
isnull([Feb],0) as Feb,
isnull([Mar],0) as Mar,
isnull([Apr],0) as Apr,
isnull([May],0) as May,
isnull([Jun],0) as Jun,
isnull([Jul],0) as Jul,
isnull([Aug],0) as Aug,
isnull([Sep],0) as Sep,
isnull([Oct],0) as Oct,
isnull([Nov],0) as Nov,
isnull([Dec],0) as Dec

from tbl
Pivot (sum(amount) for month_sales in([Jan],[Feb],[Mar],[Apr],[May],[Jun],[Jul],[Aug],[Sep],[Oct],[Nov],[Dec]
)) as pvt
Order by year_sales







