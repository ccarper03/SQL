--Charles Carper
--SQL06Lab
--10.14.14

--1
Select * 
	From Carper.SALESREP
	Where GENDER = 'F';

--2
Select * 
	From Carper.SALESREP
	Where Payrate >= 12.75;

--3
Select * 
	From Carper.SALESREP
	Where Hiredate >= '2007-06-30';

--4
Select Distinct payrate 
	concat ' hourly pay rate. '
	as "Distintct Pay Rates"
	From Carper.SALESREP
	order by "Distintct Pay Rates" desc;
--5
Select * 
	From Carper.SALESREP
	where INITIAL is Null;
--6
Select firstname, lastname, commrate,
	case
		When commrate < .065 Then ' Low commission rate' 
		When commrate < .11  Then ' Medium commission rate'
		Else 			  ' High commission rate'
	End As "Commision Rate Class."
	From Carper.SALESREP;
--7
select count(firstname)
	concat ' data rows in the SalesRep table'
	as "Number of Sales Reps."
	From Carper.SALESREP;

--8
select (sum(payrate)/count(payrate)) concat
	' is the average rate for sales representatives.'
	as "Average Pay Rate" 
	From Carper.SALESREP;

--9
select 	Min(CommRate) As "Min Commission Rate",
	Max(CommRate) As "Max Commission Rate",
     	Max(CommRate) - Min(CommRate) As "Difference"
	From Carper.SALESREP;
--10
select *
	From Carper.SALESREP
	where payrate >  15
	and commrate  > .11; 
--11
select *
	From Carper.CUSTOMER
	where not (city = 'Baltimore' or city = 'Annapolis')
	and state = 'MD'; 
	
--12
select decimal (round(avg(creditlmt),2)) 
	concat 
	' is the average of all credit limits in the Customer table.'
	as "Average Credit Limit"
	From Carper.CUSTOMER;

--13
select count(state) concat 
	' customers located in Maryland and Virginia.'
	as "MD and VA Customers"
	From Carper.CUSTOMER
	where state in ('MD','VA');
---14
select city,
	count(*) as " Number of Customers",
	decimal (round(avg(discount),3),3,3) as "Average Discount"
	From Carper.CUSTOMER
	group by city;
	
--15
Select CustNo, CustName, Balance 
	from Carper.Customer
	Where Balance > 0;

--16 
select *
	From Carper.Customer
	where creditlmt <= 12500
	and balance  > 0; 
--17
select *
	From Carper.Customer
	where city in ('Dover','Newark','Wilmington');
--18
select *
	From Carper.Customer
	where city in ('Georgetown','Delmar')
	and state in ('DE');

--19
Select * 
	From Carper.SalesTrans
	where ShipDate is Null;
--20
select * 
	From Carper.SalesTrans
	where shipdate = saledate;

--21
select * 
	From Carper.SalesTrans
	where saledate between '2013-06-1' and '2013-07-31';
	
--22
select distinct SalesRepNO,
	count(SalesRepNO) as "Number of Sales"
	From Carper.SalesTrans
	group by SalesRepNo
	order by "Number of Sales" desc;
--23
select round(avg(invoiceamt),2) concat 
	' is the average invoice amount for all sales transactions.'
	as "Average invoice Amount."
	From Carper.SalesTrans;

--24
select *
	From Carper.SalesTrans
	where salesrepno = '99001';
--25
select *
	From Carper.SalesTrans
	where CustNo = '11001';
	
--26
select count(DeptNo) concat ' data rows in the Department table.'
	as "Number of Department"
	From Carper.Department;

--27
select DeptName
	From Carper.Department;

--28
select sum(AmtPaid) concat ' is the sum of all amounts paid in the Payments table.'
	as "Sum of Amount Paid."
	From Carper.Payments;

--29
select *
	From Carper.Payments
	where DATERCVD = '2013-08-30';
--30
select *
	From Carper.Payments
	where amtpaid < 1500;
