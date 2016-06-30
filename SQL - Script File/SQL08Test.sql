--Charles Carper
--SQL08Test
-------------------------------------------------------------
--1
Select 	OrdTable.orderno,
	OrdTable.saledate,
	OrdTable.invoiceAmt,
	ClntTable.clientno,
	ClntTable.name
From	Carper.ORDERS As OrdTable
	Join
	Carper.clients As ClntTable
On 	ClntTable.clientno = OrdTable.clientno
Order by	OrdTable.invoiceAmt DESC;
-------------------------------------------------------------
--2
Select	ClntTable.clientNo,
	ClntTable.name,
	OrdTable.orderNo
From 	Carper.Clients As ClntTable
	Join
	Carper.Orders As OrdTable
On	ClntTable.clientNo = OrdTable.clientNo
Order by	OrdTable.clientNo;
-------------------------------------------------------------	
--3
Select	ClntTable.ClientNo,
	ClntTable.Name,
	OrdTable.OrderNo,
	OrdTable.SaleDate,
	OrdTable.ShipDate,
	OrdTable.InvoiceAmt
From	Carper.Clients As ClntTable
	Join
	Carper.Orders As OrdTable
On	ClntTable.ClientNo = OrdTable.ClientNo
Where	OrdTable.InvoiceAmt  <  1000
Order by	OrdTable.SaleDate;
-------------------------------------------------------------
--4
Select	ClntTable.ClientNo,
	ClntTable.Name,
	OrdTable.OrderNo,
	OrdTable.InvoiceAmt
From	Carper.Clients As ClntTable,
	Carper.Orders As OrdTable
Where	ClntTable.ClientNo = OrdTable.ClientNo
	And
	OrdTable.InvoiceAmt < 100;
-------------------------------------------------------------