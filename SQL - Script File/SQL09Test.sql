--Charles Carper
--SQL09Test

--1
Select 	Orders.orderNo, Orders.clientNo, Orders.invoiceAmt
From 	Carper.Orders
Where 	Orders.invoiceAmt >= (Select Avg(invoiceAmt)From Carper.Orders);

--2
Select 	Clients.clientNo,Clients.name, Clients.balDue
From 	Carper.Clients
Where 	Clients.balDue >= (Select Avg(balDue)From Carper.Clients);

--3
Select	clntTable.ClientNo,clntTable.name, clntTable.balDue
From 	Carper.Clients As clntTable,
	Carper.Orders As OrdTable
Where 	(balDue > 100.00) And 250.00 <= (Select SUM(InvoiceAmt) 
From	Orders
Where	clntTable.ClientNo = OrdTable.ClientNo);

--4
Select	 ClientNo, "MinInvoiceAmt","MaxInvoiceAmt"
From	(Select ClientNo, Min(invoiceAmt)As "MinInvoiceAmt",
		      Max(invoiceAmt)As "MaxInvoiceAmt"
	From carper.orders
	Group By ClientNo) As AmountsMinMax
Where	"MinInvoiceAmt" <= 100
And	"MaxInvoiceAmt" >= 500;

--5
Update carper.Clients
	SET baldue = baldue + (Select sum(invoiceAmt) From Carper.Orders 
	Where Clients.ClientNo = Orders.ClientNo)
	Where ClientNo < 10016;