--Charles Carper
--SQL10Test.sql

--1
Create View Carper.MdClients As
	Select * 
	From Carper.Clients
	Where STATE = 'MD';

--2
Select * From Carper.MdClients;

--3
Create View Carper.VaClients As
	Select * 
	From Carper.Clients
	Where STATE = 'VA';

--4
Select * From Carper.VaClients;

--5
Create View Carper.DeClients As
	Select * 
	From Carper.Clients
	Where STATE = 'DE';

--6
Select * From Carper.DeClients;

--7
Create View Carper.DoverClients As
	Select clientNo,name,address,city,state,zipcode
	From Carper.Clients
	Where City = 'Dover';
--8
Select * From Carper.DoverClients;

--9
Create View Carper.LargeBalClients As
	Select clientNo,name,balDue
	From Carper.Clients
	Where balDue >= 1500;
--10
Select * From Carper.LargeBalClients;

--11
Create View Carper.AvgInvoiceAmt As
	Select ClientNo,
	Avg(invoiceamt) AS AvgInvAmt
	From Carper.Orders
	Group By ClientNo;
	
--12
Select * From Carper.AvgInvoiceAmt;
--13
Create View Carper.NumOfShipments As
	Select Shipdate,
	count(shipdate) As "NumShip"
	From Carper.Orders
	Group By Shipdate;
	
--14
Select * From Carper.NumOfShipments;