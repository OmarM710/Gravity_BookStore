select * from DimShipping


alter table DimShipping 
drop column cost 

rollback 

select * from DimBooks

truncate table DimBooks 
select * from DimBooks

truncate table factsales 

rollback 

select * from DimCustomers

select * from DimShipping where Shipping_method_name is null or Shipping_method_id is null

select order_date, title, price
from Factsales inner join DimBooks
on Book_surrgot_key= Book_SK

select * from DimBooks