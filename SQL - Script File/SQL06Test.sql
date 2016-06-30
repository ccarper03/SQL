--Charles Carper
--SQL06Test
--1
select  *
from carper.clients;

--2
select  *
from carper.clients
where state = 'DE';

--3
select  *
from carper.clients
where baldue > '0';

--4
select  *
from carper.clients
where baldue <= '100';

--5
select distinct city 
as "Client Cities"
from carper.clients
order by "Client Cities";

--6
select count(clientno) concat ' data rows in the Clients table.'
as "Number of Clients"
from carper.clients;

--7
select sum(baldue) concat ' is the sum of the Balance Due column in the Clients table.'
as "Sum of Balance Due"
from carper.clients;

--8
select avg(baldue) concat ' is the average of the Balance Due column in the Clients table.'
as "Average of Balance Due"
from carper.clients;

--9
select clientno, name, city
from carper.clients
where city in ('Salisbury');

--10
select clientno, name, state
from carper.clients
where state in ('DE')
and baldue = '0';

--11
select *
	from carper.orders;

--12
select * 
	from carper.orders
	where saledate <= '2014-08-10';

--13
select *
	From Carper.ORDERS
	Where CLIENTNO in ('10001','10007', '10015');

--14
select *
	From Carper.ORDERS
	WHERE SHIPDATE = saledate + 2 days;


--15
select orderNO, clientNO , invoiceamt,
	case 
	When invoiceamt < 250   Then	  ' Small'
      	When invoiceamt < 1000  Then      ' Medium'
      	Else				  ' Large'  
	end as "Order Class"
	From Carper.ORDERS;
