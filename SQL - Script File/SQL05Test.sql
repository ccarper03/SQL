--Charles Carper
--10.07.14
--SQL05Test.sql
--1
Create Table Carper.CreditLoan
  	(CustID		Integer          		Not Null Primary Key,
   	LoanID    	Integer          		Not Null,   
  	LoanDate   	Date             		Not Null,
  	AppAge  	Integer            		Default 18,

CONSTRAINT LoanID_UK Unique (LoanID),
CONSTRAINT AppAge Check (AppAge > 17));
	      

--2
Create Table Carper.Student
	(StudentNo		Decimal		(7, 0)		Not Null Primary Key,
	FirstName		Character	(10)		Not Null, 
	Initial			Character	(1)		Default Null,
	LastName		Character	(15)		Not Null, 
	SocSecNo		Decimal		(9, 0)		Not Null, 
	Gender			Character	(1)		Not Null,
	BirthDate		Date				Not Null,
	EnrollDate		Date				Not Null,	
	Major			Character	(3)		Not Null,
	TotCredits		Decimal		(3, 0)		Default 0,
	GPA			Decimal		(3, 2)		Default 0.00,
	Class			Character	(2)		Not Null,
	Graduated		Character	(1)		Not Null,
CONSTRAINT SocSecNo_UK Unique (SocSecNo),
CONSTRAINT SocSecNo_UK Check (SocSecNo > 0 And SocSecNo <999999999),
CONSTRAINT Gender Check (Gender = 'M' Or Gender = 'F'),
CONSTRAINT BirthDate Check (BirthDate >= '1900-01-01'),
CONSTRAINT EnrollDate Check (EnrollDate>BirthDate ),
CONSTRAINT Major Check (Major = 'CIS' Or Major = 'BUS' Or Major = 'ENG' Or Major = 'MED'),
CONSTRAINT Class Check (Class = 'FR' or Class = 'SO' or Class = 'JR' or  Class ='SR'),
CONSTRAINT Graduated Check (Graduated = 'Y'or Graduated = 'N'));