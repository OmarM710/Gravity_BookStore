--adding coulmn named modified date in the cust_order


alter table cust_order
add ModifiedDate datetime 

go
-- creating trigger (Tdate) after insert to update modified date coulmn

create trigger Tdate on cust_order after insert as 
begin 
update cust_order 
set ModifiedDate = GETDATE()
	FROM cust_order 
    INNER JOIN INSERTED 
    ON cust_order.order_id = INSERTED.Order_ID
end
-- droping trigger for any possible errors 

drop trigger Tdate


--testing the trigger  Tdate

insert into cust_order
(  order_date)
values (  '2022-09-21 16:32:18.027')

-- viewing the table after trigger Tdate

select * from cust_order
where order_id = (select MAX(order_id) from cust_order)


--creating trigger Udate on update the modifieddate column 


create trigger Udate on cust_order after update as 
begin 
update cust_order
set ModifiedDate = GETDATE()
FROM cust_order 
    INNER JOIN INSERTED 
    ON cust_order.order_id = INSERTED.order_id 
end 
-- droping trigger for any possible erorrs 


drop trigger Udate 

--testing the trigger 
-- seting the values to be null values
update cust_order
set modifieddate = null 

select * from cust_order 

-- testing the trigger 
update cust_order
set order_date = '2022-07-21 16:32:18.027'
where order_id = 5


select * from cust_order

update cust_order
set ModifiedDate = getdate()

--inserting the values of data to test the modifieddata coulmn

insert into cust_order
(order_date, customer_id , shipping_method_id, dest_address_id)
values(getdate(),845,3,18)

 

--the query of the first DB source in the SSIS


SELECT co.customer_id, b.book_id, co.shipping_method_id, co.order_id,ol.price, s.cost, format(co.order_date, 'yyyy-MM-dd 00:00:00.000') AS order_date
FROM     cust_order AS co LEFT OUTER JOIN
                  order_line AS ol ON co.order_id = ol.order_id LEFT OUTER JOIN
                  book AS b ON ol.book_id = b.book_id LEFT OUTER JOIN
                  shipping_method AS s ON s.method_id = co.shipping_method_id

where co.modifieddate> (select date from Gravity_BookStore_DWH.dbo.MetaData)