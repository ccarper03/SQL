--Charles Carper
--SQL07Lab
--10.21.14 

--1
insert into Carper.Customer
          Values( 11031,
                       'Wilmington University',
                       '1011 North DuPont Hwy.',
                       'Wilmington',
                       'DE',
                       '19896-1011',
                       .200,
                       100000,
                       0.00);

--2
insert into Carper.Customer
          Values( 11032,
                       'Cyber Experts',        
                       '15 The Circle',
                       'Dover',  
                       'DE',
                       '19901-0015',
                       .095,
                       22500,
                       0.00);

--3 
insert into Carper.SalesRep
          Values( 99012,
                       'Warren',
                       'T',
                       'Wells',
                       'M',
                       '1983-03-19',
                       '2010-11-01',
                       '33',
                       10.00,
                       .040);
--4
insert into Carper.SalesRep
          Values( 99013,
                       'Stephanie',
                       'K',
                       'Clarkson',
                       'F',
                       '1984-02-14',
                       '2010-11-15',
                       '44',
                       11.25,
                       .075);

--5
Update Carper.customer 
	Set CUSTNAME = replace(CUSTNAME,
        'Co.',
        'Company');

--6
update Carper.customer 
	Set CUSTNAME = replace(CUSTNAME,
        'Inc.',
        'Incorporation');
--7
update Carper.customer 
	Set CUSTNAME = replace(CUSTNAME,
        'Corp.',
        'Corporation');
--8
update Carper.customer 
	Set ADDRESS = replace(ADDRESS,
        'St.',
        'Street');
--9
update Carper.customer 
	Set ADDRESS = replace(ADDRESS,
        'Ave.',
        'Avenue');

--10
update Carper.customer 
	Set ADDRESS = replace(ADDRESS,
          'Blvd.',
          'Boulevard');

--11
update Carper.customer 
          Set ADDRESS = replace(ADDRESS,
          'Rd.',
          'Road');

--12
update Carper.customer 
          Set ADDRESS = replace(ADDRESS,
          'Hwy.',
          'Highway');

--13
update Carper.customer 
          Set ADDRESS = trim(ADDRESS) Concat ' / Suite A'
 Where CUSTNO = 11018;
     
--14
update Carper.SALESREP 
         Set LASTNAME = 'Whitmore'
         Where SALESREPNO = 99002;

--15
update Carper.Customer
          set discount = discount - .015
          Where discount < .100;

--16
Update Carper.Customer
         Set Discount = (Select Avg(Discount)
         From Carper.Customer)
         Where custno = 11032;

--17
Update Carper.Customer
          set discount = discount + .025
          Where custname = 'Delaware-Tech' or custname = 'University of Delaware' or custname = 'Delaware State University' or custname = 'Wilmington University';

--18
update Carper.salesrep
          set payrate = payrate + .035;

--19
update Carper.customer
          set creditlmt = creditlmt - 3500
          Where balance > 0;

--20
update Carper.Salestrans
          set Shipdate = Shipdate + 3 Days
          Where shipdate >= '2013-12-01';

--21
update Carper.Department
           set Deptname  = trim(Deptname) concat ' & Components'
           Where Deptno = 11;

--22
update Carper.Department
           set Deptname  = trim(Deptname) concat ' & Contracts'
           Where Deptno = 66;

--23
update Carper.customer
           set city = 'Cumberland',
           zipcode = '21501-0001'
           Where custno = 11021;

--24
update Carper.salesrep
          set commrate = commrate + .005;

--25
delete Carper.department
          Where deptno = '77';

--26
delete Carper.salestrans
          Where shipdate >= '2013-12-25';

--27
select * 
          From carper.customer;

--28
select * 
          From carper.salesrep;

--29
select * 
          From carper.salestrans
          Where shipdate >= '2013-12-1';

--30
select * 
          From carper.department;