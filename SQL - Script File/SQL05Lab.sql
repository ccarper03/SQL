--Charles Carper
--10/2
--1
Create Table Carper.SalesTrans
	(TransNo		Decimal		(6, 0)		Not Null Primary Key,
	SalesRepNo		Decimal		(5, 0)		Not Null,
	CustNo			Decimal		(5, 0)		Not Null,
	SaleDate   		Date				Not Null,
	InvoiceAmt  		Decimal		(8,2)		Not Null,
	ShipDate		Date				Default Null);

--2
Insert Into Carper.SalesTrans
   Values(100001,
	99002,
	11022,
	'2013-01-04',
	4118.50,
	'2013-01-07');

--3
Select * From Carper.SalesTrans;