--Charles Carper
--11/13/2014
--SQL09Lab

--1
Select 	Customer.custNo,Customer.custName, Customer.discount
From 	Carper.Customer
Where 	Customer.discount >= (Select Avg(discount)From Carper.Customer);

--2
Select	CustTable.custNo,CustTable.custName, CustTable.discount
From 	Carper.Customer As CustTable,
	Carper.SalesTrans As TranTable
Where 	(discount > .10) And 10000.00 <= (Select SUM(invoiceAmt) 
From	SalesTrans
Where	CustTable.custNo = TranTable.custNo);

--3
Select 	CustTable.custNo,CustTable.Custname
From 	Carper.Customer As CustTable
Where 	Not Exists( Select * 
From 	Carper.SalesTrans
Where	CustTable.custNo = SalesTrans.custNo);

--4
select CurCustomer.custname, CurCustomer.city
From Carper.Customer As CurCustomer
Where exists
( Select * 
From carper.salestrans AS CurSalesTrans
Where CurSalesTrans.custNO = CurCustomer.custNO
AND CurSalesTrans.invoiceAmt > 
( Select AVG(AvgSalesTrans.invoiceAmt)
From Carper.Customer As AvgCustomer
Join
carper.salestrans As AvgSalesTrans
On AvgCustomer.custNO = AvgSalesTrans.custNO
Where AvgCustomer.city = CurCustomer.city));

--5
Select	 city, "MinDiscount","MaxDiscount"
From	(Select city, Min(Discount)As "MinDiscount",
		      Max(Discount)As "MaxDiscount"
	From carper.customer
	Group By City) As CityMinMax
Where	"MinDiscount" <= .100
And	"MaxDiscount" >= .150;

--6
Select	 city,  
Min(Discount)As "MinDiscount",
Max(Discount)As "MaxDiscount"
	From carper.customer
	Group By City 
Having	Min(Discount) <= .100
And 	Max(Discount) >= .150;

--7
Update carper.Customer
	SET balance = balance - (Select amtpaid From Carper.Payments 
	Where Customer.custNo = Payments.custNo)
	Where balance > 0;

	