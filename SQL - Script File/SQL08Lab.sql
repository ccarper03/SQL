--Charles Carper
--SQL08Lab

--1
select
	repTable.salesrepno, 
	repTable.firstname, 
	repTable.lastname, 
	repTable.deptno, 
	depTable.deptname
From 	Carper.SalesRep As repTable 
	Join
 	Carper.Department As depTable 
On 	repTable.deptno = depTable.deptno
Order 	by salesrepno;

--2	
select 	RepTable.SALESREPNO,
	TranTable.TRANSNO,
	TranTable.CUSTNO,
	TranTable.SALEDATE,
	TranTable.INVOICEAMT
From	Carper.SalesRep as RepTable
	Join
	carper.SalesTrans as TranTable
On	RepTable.SalesRepNo = TranTable.SalesRepNo
Where 	INVOICEAMT < 1000;

--3
Select	CustTable.CustNo,
	CustTable.Custname,
	TranTable.Invoiceamt,
	TranTable.Shipdate
From	Carper.CUSTOMER As CustTable
	Join
	Carper.SALESTRANS As TranTable
On	CustTable.Custno = TranTable.CustNo 
Where	Shipdate BETWEEN '2013-10-1' And '2013-10-31'
Order	By CustNo;

--4
Select 	TranTable.transNo,
	TranTable.invoiceAmt,
	RepTable.salesRepNo,
	DepTable.deptName,
	CustTable.custName
From	Carper.SalesTrans As TranTable,
	Carper.SalesRep As RepTable,
	Carper.department As DepTable,
	Carper.Customer As CustTable
Where	RepTable.salesRepNo = TranTable.SalesRepNo
	And
	TranTable.custNo = CustTable.custNo
	And
	RepTable.deptNo = DepTable.deptNo
	And
	invoiceAmt = 1000;

--5
Select	salesRep.salesrepno,
	salesRep.Lastname,
	salestrans.TransNo,
	Salestrans.salesrepno,
	salestrans.invoiceAmt
From 	Carper.salesRep
	Left Exception Join
	Carper.SalesTrans
On	salesRep.salesrepno = Salestrans.salesrepno;
	
	
	
