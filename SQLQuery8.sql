Create Database College;

Use College
GO

DROP TABLE Students
CREATE TABLE Students(
Id int identity (1,1) Not Null,
LastName varchar (20) Not Null,
FirstName varchar (20) Not Null,
SSN int Null,
HomeAddress varchar Not Null,
City varchar  Not Null,
HomeState varchar  Not Null,
Zipcode int Not Null,
PhoneNumber int Not Null,
);


Insert Into Students (Id, LastName, FirstName, SSN, HomeAddress, City, HomeState, Zipcode, PhoneNumber)
Values ('1', 'Summers', 'Nathan', '999-88-7777', '111 Lorain Ave', 'Cleveland', 'Ohio', '44111','216-444-5555');
Insert Into Students(Id, LastName, FirstName, SSN, HomeAddress, City, HomeState, Zipcode, PhoneNumber)
Values ('2', 'Wilson', 'Wade', '111-22-333', '222 Detroit Road', 'Lakewood', 'Ohio', '44107', '216-333-4444');
Insert Into Students(Id, LastName, FirstName, SSN, HomeAddress, City, HomeState, Zipcode, PhoneNumber)
Values ('3', 'Braddock', 'Betsy', '444-55-6666', '333 Madison Ave', 'Lakewood','Ohio' ,'44107', '440-222-4444');
SELECT * FROM Students;

DROP TABLE Classes
CREATE TABLE Classes(
Id int identity Not Null,
StudentId int  Not Null,
ClassNumber int Not Null,
Department varchar  Not Null,
);


Insert Into Classes (Id, StudentId, ClassNumber, Department)
Values ('1','896214', '1010', 'English');
Insert Into Classes (Id, StudentId, ClassNumber, Department)
Values ('2', '655425', '1111', 'Algebra');
Insert Into Classes (Id, StudentId, ClassNumber, Department)
Values ('3', '233469', '1540', 'History');
SELECT * FROM Classes;

DROP TABLE Scores
CREATE TABLE Scores(
ClassesId int Not Null, 
Assignment varchar(20) Not Null,
DateAssigned datetime Not Null,
DateDue datetime Not Null,
DateSubmitted datetime Not Null,
PointsEarned int identity Not Null,
PointsPossible int Not Null,
);


Insert Into Scores (ClassesId, Assignment, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible)
Values ('1010', 'Report', '12-5-2017', '12-15-2017', '12-14-2017', '85', '100')
Insert Into Scores (ClassesId, Assignment, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible)
Values ('1111', 'Quiz', '11-10-2017','11-10-2017', '11-10-2017', '9', '10')
Insert Into Scores (ClassesId, Assignment, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible)
Values ('1540', 'Midterm', '10-31-2017', '10-31-2017', '10-31-2017','75', '100');
SELECT * FROM Scores;