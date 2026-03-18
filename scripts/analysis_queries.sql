CREATE TABLE Franchise(
	franchiseID SMALLINT NOT NULL,	
	ownerID SMALLINT NOT NULL,	
	ownerfirstname VARCHAR(20) NOT NULL,	
	ownerlastname VARCHAR(20) NOT NULL,	
	address	 VARCHAR(60) NOT NULL,
	email VARCHAR(40) NOT NULL,	
	phone VARCHAR(20) NOT NULL,
PRIMARY KEY (franchiseID));

INSERT INTO Franchise
VALUES
(1,119,'Jessica','Fagin','2960 E Southlake Blvd Ste 170, Southlake, TX 76092','Jessica.Fagin@gymboreeclasses.com','(817) 421-9300'),
(2,219,'Amber','Glenn','1056 Town East Mall, Mesquite, TX 75150','Amber.Glenn@gymboreeclasses.com','(214) 123-7845'),
(3,319,'Nathan','Chen','3450 Mt. Diablo Blvd., Lafayette, CA 94549','lafayetteca@gymboreeclasses.com','(415) 604-3094'),
(4,419,'Chester','Wallace','11005 Jones Bridge Rd, Johns Creek, GA 30022','johnscreekga@gymboreeclasses.com','(770) 772-4000'),
(5,519,'Barbara' ,'Engleton', '2639 Connecticut Ave. NW #133, Washington, DC 20008','wdc@gymboreeclasses.com','(202) 627-2450');

CREATE TABLE Employees(
	employeeID SMALLINT NOT NULL,
	fName VARCHAR(20) NOT NULL,
	lName VARCHAR(20) NOT NULL,
	position VARCHAR(11) NOT NULL,
	hourlypayrate SMALLINT NOT NULL,
	hiredate DATE NOT NULL,
	franchiseID SMALLINT NOT NULL,
	bossID SMALLINT,
	PRIMARY KEY (employeeID),
	FOREIGN KEY (franchiseID)
		REFERENCES Franchise(franchiseID),
	FOREIGN KEY (bossID)
REFERENCES Employees (employeeID));

INSERT INTO Employees
VALUES
(10,'June','Raefel','manager',26,'2021-09-07',1,NULL),
(11,'Chris','Dawson','instructor',20,'2021-10-18',1,10),
(12,'Daphne','Bridgerton','instructor',20,'2021-10-26',1,10),
(13,'Zara','Nelson','instructor',19	,'2022-11-04',1,10),
(14,'Mauricio','Lopez','instructor',19,'2022-12-07',1,10),
(15,'Jennifer','Frank','instructor',18,'2023-06-11',1,10),
(16,'Penelope','Featherington ','instructor',18	,'2023-07-18',1,10),
(17,'Michael','Garrett','frontend',17,'2023-03-27',1,10),
(18,'Brinae','Bakion','frontend',17	,'2024-02-17',1,10),
(19,'Mercury' ,'Stardust' ,'maintenance',23	,'2019-01-03',1,10);

CREATE TABLE Timecard(
	date DATE NOT NULL,
	employeeID SMALLINT NOT NULL,
	starttime TIME,
	endtime TIME,
	PRIMARY KEY (date, employeeID),
	FOREIGN KEY (employeeID)
REFERENCES Employees(employeeID));

INSERT INTO TIMECARD
VALUES
('2024-06-15',11,'9:00:00','17:30:00'),
('2024-06-15',  12, '9:00', '17:30'),
('2024-06-15',	17,	'9:00',	'17:30'),
('2024-06-15',	19,	'10:00','18:30'),
('2024-06-16',	10,	'9:00',	'17:30'),
('2024-06-16',	13,	'9:00',	'17:30'),
('2024-06-16',	14,	'9:00',	'17:30'),
('2024-06-16',	15,	'9:00',	'17:30'),
('2024-06-16',	18,	'9:00',	'17:30'),
('2024-06-16',	19,	'10:00','18:30'),
('2024-06-17',	10,	'8:00',	'16:30'),
('2024-06-17',	11,	'9:00',	'17:30'),
('2024-06-17',	13,	'9:00',	'17:30'),
('2024-06-17',	15,	'9:00',	'17:30'),
('2024-06-17',	17,	'9:00',	'17:30'),
('2024-06-18',	10,	'8:00', '16:30'),
('2024-06-18',	12,	'9:00',	'17:30'),
('2024-06-18',	14,	'9:00',	'17:30'),
('2024-06-18',	16,	'9:00',	'17:30'),
('2024-06-18',	18,	'9:00',	'17:30'),
('2024-06-19',	10,	'8:00',	'16:30'),
('2024-06-19',	11,	'9:00',	'17:30'),
('2024-06-19',	13,	'9:00',	'17:30'),
('2024-06-19',	15,	'9:00',	'17:30'),
('2024-06-19',	17,	'9:00',	'17:30'),
('2024-06-19',	19,	'10:00','18:30'),
('2024-06-20',	10,	'8:00',	'16:30'),
('2024-06-20',	12,	'9:00',	'17:30'),
('2024-06-20',	14,	'9:00',	'17:30'),
('2024-06-20',	16,	'9:00',	'17:30'),
('2024-06-20',	18,	'9:00',	'17:30'),
('2024-06-21',	10,	'8:00',	'16:30'),
('2024-06-21',	11,	'9:00',	'17:30'),
('2024-06-21',	13,	'9:00',	'17:30'),
('2024-06-21',	15,	'9:00',	'17:30'),
('2024-06-21',	17,	'9:00',	'17:30'),
('2024-06-22',	10,	'8:00',	'16:30'),
('2024-06-22',	11,	'9:00',	'17:30'),
('2024-06-22',	12,	'9:00',	'17:30'),
('2024-06-22',	13,	'9:00',	'17:30'),
('2024-06-22',	15,	'9:00',	'17:30'),
('2024-06-22',	17,	'9:00',	'17:30'),
('2024-06-22',	18,	'9:00',	'17:30');

CREATE TABLE Parties(
	partyID SMALLINT NOT NULL,
	classname VARCHAR(15) NOT NULL,
	employeeID SMALLINT NOT NULL,
	PRIMARY KEY (partyID),
	FOREIGN KEY (employeeID)
REFERENCES Employees(employeeID));

INSERT INTO Parties
VALUES
(1211,	'Walkers',	11),
(1212,	'Music 1',	12),
(1213,	'Runners',	13),
(1214,	'Music 2',	14),
(1215,	'Art 1',	15),
(1216,	'Explorers',16),
(1217,	'Babies',	11),
(1218,	'Crawlers',	12),
(1219,	'Preschool Steps',	13),
(1220,	'Art 2',	14),
(1221,	'Walkers',	15),
(1222,	'Music 1',	11),
(1223,	'Runners',	12),
(1224,	'Music 2',	13),
(1225,	'Art 1',	14),
(1226,	'Explorers',15),
(1227,	'Babies',	16),
(1228,	'Crawlers',	14),
(1229,	'Preschool Steps',	11),
(1230,	'Art 2',	12),
(1231,	'Walkers',	13),
(1232,	'Music 1',	14),
(1233,	'Runners',	16),
(1234,	'Music 2',	14);

CREATE TABLE Customers(
	custNo SMALLINT NOT NULL,
	custfName VARCHAR(20) NOT NULL,
	custlName VARCHAR(20) NOT NULL,
	phoneNo VARCHAR(20),
	cemail VARCHAR(40),
PRIMARY KEY (custNo));

INSERT INTO Customers
VALUES
(1,	'Bruno','Madrigal', '555-123-4567',	'b.madrigal@gmail.com'),
(2,	'Alice','Frank',	'555-234-5678',	'a.frank@outlook.com'),
(3,	'Benjamin','Buttons',	'555-345-6789',	'b.buttons@hotmail.com'),
(4,	'Donald','Ducle', 	'555-456-6789',	'd.ducle@gmail.com'),
(5,	'Wendy','Adams',	'555-567-8901',	'w.adams@aol.com'),
(6,	'Beverly','Cleary', 	'555-678-9012',	'b.cleary@gmail.com'),
(7,	'Raney','Grohs',	'555-789-9123',	'r.cleary@gmail.com'),
(8,	'Arnie','Holter',	'555-890-1234',	'a.holter@outlook.com'),
(9,	'Bert','Penn',	'555-901-2345',	'b.penn@gmail.com'),
(10,'Ernie', 'Disney',	'555-012-3456',	'e.disney@hotmail.com'),
(11,'Lisa','Potter',	'555-098-7654',	'l.potter@gmail.com'),
(12,'Hermione','Smith',	'555-987-6543',	'h.smith@gmail.com'),
(13,'Violet', 'Fagin',	'555-876-5432',	'v.fagin@outlook.com'),
(14,'Joey','Duplanty',	'555-765-4321',	'j.duplanty@gmail.com'),
(15,'Rachel','Hicks',	'555-654-3210',	'r.hicks@outlook.com'),
(16,'Monica','Freeman',	'555-543-2100',	'm.freeman@gmail.com'),
(17,'Pheobe', 'Fleisher',	'555-432-1009',	'p.fleisher@outlook.com'),
(18,'Bob','Lopez',	'555-321-0098',	'b.lopez@aol.com'),
(19,'Brittany','Bakion',	'555-210-0987',	'b.bakion@hotmail.com'),
(20,'Mitchell','Conde',	'555-100-9876',	'm.conde@gmail.com'),
(21,'Sheila','Henson', 	'555-555-5555',	's.henson@outlook.com'),
(22,'Bethany','Donahue',	'555-444-3333',	'b.donahue@gmail.com'),
(23,'Jessey','Milton',	'555-333-2222',	'j.milton@gmail.com'),
(24,'Alex','Ritz',	'555-222-1111',	'a.ritz@gmail.com');

CREATE TABLE RATE(
	partyID SMALLINT NOT NULL,
	custNo SMALLINT NOT NULL,
	reviewdate DATE NOT NULL,
	rating SMALLINT NOT NULL,
	PRIMARY KEY (partyID, custNo),
	FOREIGN KEY (partyID)
		REFERENCES Parties(partyID),
	FOREIGN KEY (custNo)
		REFERENCES Customers(custNo));

INSERT INTO RATE
VALUES
(1211	,1	,'2024-06-23',	4),
(1212	,2	,'2024-06-23',	5),
(1213	,3	,'2024-06-24',	1),
(1214	,4	,'2024-06-24',	3),
(1215	,5	,'2024-06-25',	4),
(1216	,6	,'2024-06-26',  5),
(1217	,7	,'2024-06-26',	3),
(1218	,8	,'2024-06-27',	4),
(1219	,9	,'2024-06-27',  4),
(1220	,10	,'2024-06-23',	3),
(1221	,11	,'2024-06-24',	5),
(1222	,12	,'2024-06-25',	2),
(1223	,13	,'2027-06-26',	5),
(1224	,14	,'2024-06-27',	5),
(1225	,15	,'2024-06-23',	4),
(1226	,16	,'2024-06-22',	3),
(1227	,17	,'2024-06-27',	5),
(1228	,18	,'2024-06-27',	4),
(1229	,19	,'2024-06-26',	3),
(1230	,20	,'2024-06-25',	4),
(1231	,21	,'2024-06-24',	4),
(1232	,22	,'2024-06-23',	3),
(1233	,23	,'2024-06-22',	4),
(1234	,24	,'2024-06-24',	4);

CREATE TABLE Payments(
	confirmationNo INT NOT NULL,
	amount SMALLINT NOT NULL,
	paymentType VARCHAR(10) NOT NULL,
	datetime TIMESTAMP NOT NULL,  
	status VARCHAR(10) NOT NULL,
	PRIMARY KEY (confirmationNo));

INSERT INTO Payments
VALUES
(1211241,	449,	'debit',	'2024-06-01 18:00'  ,'completed'),
(1212241,	499,	'credit',	'2024-06-04 15:00'	,'completed'),
(1213241,	449,	'cash',	    '2024-06-06 08:00'	,'refunded'),
(1214241,	499,	'check',	'2024-06-12 11:00'	,'completed'),
(1215241,	449,	'credit',	'2024-06-13 19:00'	,'completed'),
(1216241,	499,	'debit',	'2024-06-13 11:00'	,'completed'),
(1216242,	449,	'debit',	'2024-06-02 07:00'	,'completed'),
(1216243,	499,	'credit',	'2024-06-12 11:00'	,'completed'),
(1216244,	449,	'cash',	    '2024-06-04 15:00'	,'completed'),
(1216245,	499,	'check',	'2024-06-13 11:00'	,'completed'),
(1216246,	449,	'credit',	'2024-06-12 11:00'	,'completed'),
(1216247,	499,	'debit',	'2024-06-02 07:00'	,'completed'),
(1216248,	449,	'debit',	'2024-06-12 11:00'	,'completed'),
(1216249,	499,	'credit',	'2024-06-06 08:00'	,'completed'),
(1216250,	449,	'cash',	    '2024-06-04 15:00'	,'completed'),
(1216251,	499,	'check',	'2024-06-06 08:00'	,'completed'),
(1216252,	449,	'credit',	'2024-06-12 11:00'	,'completed'),
(1216253,	499,	'debit',	'2024-06-02 07:00'	,'completed'),
(1216254,	449,	'debit',	'2024-06-12 11:00'	,'completed'),
(1216255,	499,	'credit',	'2024-06-06 08:00'	,'completed'),
(1216256,	449,	'cash',	    '2024-06-12 11:00'	,'completed'),
(1216257,	499,	'check',	'2024-06-04 15:00'	,'completed'),
(1216258,	449,	'credit',	'2024-06-12 11:00'	,'completed'),
(1216259,	499,	'debit',	'2024-06-02 07:00'	,'completed');

CREATE TABLE Bookings(
	bookingID INT NOT NULL,
	bookingdate DATE NOT NULL,
	custNo SMALLINT NOT NULL,
	confirmationNo INT NOT NULL,
	PRIMARY KEY (bookingID),
	FOREIGN KEY (custNo)
		REFERENCES Customers(custNo),
	FOREIGN KEY (confirmationNo)
REFERENCES Payments(confirmationNo));

INSERT INTO Bookings
VALUES
(121124,'2024-06-15',1,1211241),
(121224,'2024-06-15',2,1212241),
(121324,'2024-06-16',3,1213241),
(121424,'2024-06-16',4,1214241),
(121524,'2024-06-16',5,1215241),
(121624,'2024-06-17',6,1216241),
(121625,'2024-06-17',7,1216242),
(121626,'2024-06-17',8,1216243),
(121627,'2024-06-18',9,1216244),
(121628,'2024-06-18',10,1216245),
(121629,'2024-06-18',11,1216246),
(121630,'2024-06-19',12,1216247),
(121631,'2024-06-19',13,1216248),
(121632,'2024-06-19',14,1216249),
(121633,'2024-06-20',15,1216250),
(121634,'2024-06-20',16,1216251),
(121635,'2024-06-20',17,1216252),
(121636,'2024-06-21',18,1216253),
(121637,'2024-06-21',19,1216254),
(121638,'2024-06-21',20,1216255),
(121639,'2024-06-22',21,1216256),
(121640,'2024-06-22',22,1216257),
(121641,'2024-06-22',23,1216258),
(121642,'2024-06-22',24,1216259);

#TRIGGER

CREATE TABLE timecard_log(
	date DATE,
    employeeID SMALLINT NOT NULL,
    old_starttime TIME,
    new_starttime TIME,
    old_endtime TIME,
    new_endtime TIME,
    update_time TIMESTAMP NOT NULL,
		PRIMARY KEY(update_time));
             
CREATE TRIGGER timecard_update
AFTER UPDATE ON timecard
FOR EACH ROW 
	INSERT INTO timecard_log 
    VALUES (old.date,old.employeeID,old.starttime,new.starttime,old.endtime,new.endtime,current_timestamp());  
    
# DML statement to fire the trigger
UPDATE timecard
SET date='2024-06-15',employeeID=12,starttime = '10:00:00', endtime = '18:30:00'
WHERE date='2024-06-15' AND employeeID=12;

#QUERY QUESTIONS

#1.MORE THAN 2 TABLES JOINED
#List the employees who instruct the ‘Music 1’ parties and the rating they received
select e.employeeID, e.fName, e.lName, e.position, p.partyID, p.classname, r.rating
from employees e, parties p, rate r
where e.employeeID=p.employeeID 
and p.partyID = r.partyID 
and e.position='instructor' 
and p.classname='Music 1';

#2. SUBQUERY 
#What classes have a rating greater than the average rating for the classes? 
select p.classname, r.partyID, r.rating
from parties p, rate r
where p.partyID= r.partyID 
and r.rating > (select avg (r.rating) from rate r);

#3.COUNT W DISTINCT 
# How many different classes does Mauricio teach at parties?
select count(distinct p.classname), e.employeeID, e.fName, e.lName, e.position
from parties p, employees e
where p.employeeID= e. employeeID 
and e.fName= 'Mauricio'
group by e.employeeID;

#4. GROUP BY WITH HAVING 
#For each class with more than 1 rating, what is the average rating for the class and the sum of the ratings
select round(avg(r.rating), 2) as averagerate, sum(r.rating) as ratesum, p.classname
from rate r, parties p
where r.partyID = p.partyID 
group by p.classname
having count(r.rating)>1;

#5.ORDER BY
#Order the employee timecards by employee ID (ascending)
select employeeID, starttime, endtime, date
from timecard
order by employeeID asc;

#6.AGGREGATE FUNCTION
#Find the sum of all the payments made using ‘credit’ for the month of June.
select sum(amount), extract(month from datetime) as month
from payments
where paymentType = 'credit' and extract(month from datetime) = 6
group by extract(month from datetime);

#7.QUERY FROM VIEW 
 #How many of the employees are instructors? Note: CREATE VIEW of employees table and remove hourlypayrate, hiredate, franchiseid, and bossid to have 'manager' pull this data for 'owner'.

 #View

 create view employeetableforowner as 
 select employeeID, fName, lName, position
 from team3_database.employees;
 
 select * from employeetableforowner;
 select count(employeeID)
 from employeetableforowner
 where position='instructor';

#8. DATE calculation
#Separate the Date and Time from the ‘Datetime’ column in the payments table.
select cast(datetime as time) as Time, cast(datetime as date) as Date 
from payments;

#9.Self-joining Query (Recursive)
#List all of the frontend employees who are managed by June (first name, last name, and the date they were hired). 
SELECT e.fName, e.lName, e.hiredate
FROM employees e, employees b
WHERE b.employeeID= e.bossID
AND e.position= 'frontend'
AND b.fName= 'June';

#10 Calculated fields with alias
# On June 4th there was a special going on at BabyBouncers for 20% off party bookings. The discount was not taken off customers’ payments. Correct the payments to display the correct amounts (also include the confirmation number and the customer number)
SELECT b.confirmationNo, b.custNo, p.amount *0.80 AS ‘correctamount’
FROM payments p, bookings b
WHERE p.datetime like '2024-06-04%';
