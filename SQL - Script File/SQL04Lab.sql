--1
Create Table Carper.Customer
	(CustNo	Decimal	(5, 0)	Not Null Primary Key,
	CustName	Character	(35)	Not Null,
	Address 	Character	(30)	Not Null,
	City     	Character	(20)	Not Null,
	State     	Character	(2)	Not Null,
	ZipCode	Character	(10)	Not Null,
	Discount	Decimal	(3, 3)	Not Null,
	CreditLmt	Decimal	(6, 0)	Not Null,
	Balance	Decimal	(8, 2)	Default 0.00);

--2
Insert Into Carper.Customer
   Values(11001,
	'Delaware-Tech',
	'Route 18 / Seashore Hwy.',
	'Georgetown',
	'DE',
	'19947-0181',
	.200,
	100000,
	0);

--3
Select * From Carper.Customer;