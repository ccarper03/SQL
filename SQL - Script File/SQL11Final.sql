--Charles Carper
--SQL11Final.sql

--1
Select *
From Carper.Customer
Where City = 'Baltimore';

--2
Select*
From Carper.Customer
Where Not state =  'DE';

--3
Select
Customer.custNo, 
Customer.custName,
Customer.discount
From Carper.Customer
Where discount >= .015;

--4
Select
Customer.custNo, 
Customer.custName,
Customer.balance
From Carper.Customer
Where balance > 0;

--5
Select *
From Carper.Customer
WHERE City LIKE '%Beach%';

--6
Select *
From Carper.Customer
WHERE custName LIKE '%Company%';

--7
Select *
From Carper.Customer
WHERE address LIKE '%Street%';

--8
Select *
From Carper.salesTrans
Where invoiceAmt >= 10000;

--9
Select * 
From Carper.salesTrans
Where CustNo IN (11001, 11002, 11003)
Order By custNo;

--10
Select 
salesTrans.TransNo,
salesTrans.shipDate
From Carper.salesTrans
Where shipDate Between  '2013-06-15' and  '2013-07-15';

--11
Select *
From Carper.salesTrans
Where shipDate = saleDate ;

--12
Select * 
From Carper.salesTrans
Where ShipDate = saledate + 1 day ;


--13
Select * 
From Carper.salesrep
Where hireDate Between '2001-01-01' and '2002-01-01';

--14
Select * 
From Carper.salesrep
Where birthDate < '1980-01-01';

--15
Select 
Count(salesrepno) AS  "NumOfReps",
Avg(payrate) AS "AvePayRate"
From Carper.SALESREP;

--16
Select * From Carper.SALESREP
Where Initial Is Null;

--17
Select 
Count(amtpaid) As "NumOfPayments",
Sum(amtpaid) As "SumOfAmtPaid"
From Carper.Payments;

--18
Select * 
From Carper.SALESREP
Where commrate >= .065 and payrate>= 12.75;

--19
Select * 
From Carper.SALESREP
Where payrate >= 12.00 and payrate !>14.00;

--20
Select 
Customer.custNo,Customer.custName, Customer.discount
From 
Carper.Customer
Where 
Customer.discount < (Select Avg(discount)From Carper.Customer);

--21
select
RepTable.firstname, 
RepTable.lastname, 
DepTable.deptno, 
DepTable.deptname
From 
Carper.SalesRep As RepTable 
Join
Carper.Department As DepTable 
On 
RepTable.deptno = DepTable.deptno
Order By 
lastname;

--22
Select 
Count(transNo) As "NumOfTrans",
Sum(invoiceAmt) As "SumInvoiceAmt"
From Carper.salestrans;

--23
Select 
Trim(firstname) Concat ' 'Concat
Trim(initial) Concat '. 'Concat
Trim(lastname) As "EmpFullName"
From Carper.SalesRep;

--24
Select 
Trim(firstname) Concat ' 'Concat
Trim(lastname) As "EmpFullName"
From Carper.SalesRep
Where initial Is null;

--25
Select
Count(city) As "SussexCoCustomers",
Avg(discount) As "AvgDiscount"
From Carper.Customer
Where City In ('Delmar' , 'Dewey Beach' , 'Georgetown' , 'Lewes' , 'Rehoboth Beach')
and State In ('DE');



