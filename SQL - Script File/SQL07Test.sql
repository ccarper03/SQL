--Charles Carper
--SQL07Lab
--10.28.14 

--1
insert into Carper.Clients
          Values( 10016,
                       'Hubbard & Sons, LLC',
                       '111 Oxford Circle',
                       'Dover',
                       'DE',
                       '199010111',
                       175.00); --reset to fix this

--2
insert into Carper.Clients
          Values( 10017,
                       'Coastal Surf Shop',
                       '25 Coastal Way',
                       'Dewey Beach',
                       'DE',
                       '199710025',
                       425.25);

--3
insert into Carper.Orders
          Values( 120031,
	10003,
	'2014-08-25',
	1149.50,
	'2014-08-29');
--4
insert into Carper.Orders
          Values( 120032,
	10007,
	'2014-08-27',
	1775.75,
	'2014-08-29');
--5
Update Carper.Clients 
	Set NAME = replace(NAME,
        'Co.',
        'Company');

--6
update Carper.Clients
	Set NAME = replace(NAME,
        'Inc.',
        'Incorporated');

--7
update Carper.Clients 
	Set NAME = replace(NAME,
        'Corp.',
        'Corporation');

--8
update Carper.Clients 
	Set ADDRESS = replace(ADDRESS,
        'Ave.',
        'Avenue');

--9
update Carper.Clients
	Set ADDRESS = replace(ADDRESS,
          'Blvd.',
          'Boulevard');

--10
update Carper.Clients
          Set ADDRESS = replace(ADDRESS,
          'Rd.',
          'Road');

--11
update Carper.Clients 
          Set ADDRESS = replace(ADDRESS,
          'Hwy.',
          'Highway');

--12
update Carper.Clients 
          Set ADDRESS = trim(ADDRESS) Concat ' - Oak Park'
 Where CLIENTNO = 10013;

--13
update Carper.Orders
          set Shipdate = saledate + 3 Days
          Where saledate >= '2014-08-1'
          and saledate <= '2014-08-15';

--14
update Carper.orders
          set invoiceamt = invoiceamt - .05
          Where invoiceamt >= 1000;

--15
delete Carper.orders
          Where orderno = '120013';

--16
select * 
          From carper.Clients;

--17
select * 
          From carper.Orders;