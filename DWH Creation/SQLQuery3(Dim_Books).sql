if exists ( 
		   select * from
		   sys.foreign_keys
		   where name = 'FK_factsales_DimBooks'
		   and 
		   object_id= OBJECT_ID('Fact Sales'))

alter table FactSales 
drop constraint FK_factsales_DimBooks


if exists (
		   select * from
		   sys.tables
		   where name = 'DimBooks'
		   and 
		   type = 'U')
drop table DimBooks 
go
-- create 

create table DimBooks
			 (Book_surrgot_key int primary key identity,
			  Book_id int,
			  title varchar(400),
			  language varchar(50),
			  PublihserName varchar(400),
			  Book_Author_name varchar(400),
			  Publication_Date date,
			  start_date datetime,
			  end_date datetime,
			  is_current int)