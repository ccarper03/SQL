--Charles Carper
--SQL10Lab.sql

--1
Create View Carper.DeCustomers As
	Select * 
	From Carper.Customer
	Where STATE = 'DE';

--2
Select * From Carper.DeCustomers;

--3
Create View Carper.MdCustomers As
	Select * 
	From Carper.Customer
	Where STATE = 'MD';
--4
Select * From Carper.MdCustomers;

--5
Create View Carper.VaCustomers As
	Select * 
	From Carper.Customer
	Where STATE = 'VA';
--6
Select * From Carper.VaCustomers;

--7
Create View Carper.FemaleReps As
	Select firstName,lastName,hireDate
	From Carper.SalesRep
	Where Gender = 'F';
--8
Select * From Carper.FemaleReps;

--9
Create View Carper.MaleReps As
	Select firstName,lastName,hireDate
	From Carper.SalesRep
	Where Gender = 'M';

--10
Select * From Carper.MaleReps;

--11
Create View Carper.CityDiscount As
	Select City,
	avg(discount) AS "AvgDiscount"
	From Carper.Customer
	Group By City;
--12
Select * From Carper.CityDiscount;

--13
Create View Carper.DiscountCount As
	Select discount,
	Count(custNo) As NumCustomers
	From Carper.Customer 
	Group By discount;
	
--14
Select * From Carper.DiscountCount;

--15
Create View Carper.SameDayShip As
	Select * 
	From Carper.SalesTrans
	Where  shipDate = saleDate;
--16
Select * From Carper.SameDayShip;

--17
Create View Carper.Q1CountSum As
	Select count(transNo)As "Q1Transactions",
	sum(invoiceAmt)As "SumOfTrans"
	From Carper.SalesTrans
	Where saleDate between '2013-01-01' and '2013-03-31';

--18
Select * From Carper.Q1CountSum;

--19
Create View Carper.Q2CountSum As
	Select count(transNo)As "Q2Transactions",
	sum(invoiceAmt)As "SumOfTrans"
	From Carper.SalesTrans
	Where saleDate between '2013-04-01' and '2013-06-30';
--20
Select * From Carper.Q2CountSum;

--21
Create View Carper.Q3CountSum As
	Select count(transNo)As "Q3Transactions",
	sum(invoiceAmt)As "SumOfTrans"
	From Carper.SalesTrans
	Where saleDate between '2013-07-01' and '2013-09-30';
--22
Select * From Carper.Q3CountSum;

--23
Create View Carper.Q4CountSum As
	Select count(transNo)As "Q4Transactions",
	sum(invoiceAmt)As "SumOfTrans"
	From Carper.SalesTrans
	Where saleDate between '2013-10-01' and '2013-12-31';
--24
Select * From Carper.Q4CountSum;

--25
Create View Carper.YearCountSum As
	Select count(transNo)As "YearTransactions",
	sum(invoiceAmt)As "SumOfTrans"
	From Carper.SalesTrans
	Where saleDate between '2013-01-01' and '2013-12-31';
--26
Select * From Carper.YearCountSum;

--27
Create View Carper.HighLimits As
Select*
From Carper.customer
Where  creditlmt >= 50000;

--28
Select * From Carper.HighLimits;

--29
Create View Carper.HaveBalances As
Select*
From Carper.customer
Where  balance != 0;

--30
Select * From Carper.HaveBalances;

--31
Create View Carper.HasPaidOnBal As
Select 	Customer.custNo,
	Customer.custname,
	Payments.datercvd,
	Payments.amtPaid
From Carper.Customer
Join
Carper.Payments
On Customer.custNo = Payments.custNo;

--32
Select * From Carper.HasPaidOnBal;