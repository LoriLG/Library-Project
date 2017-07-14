/* Library Management System-Project.*/

/* Creation of Library Schema and Tables */ 

CREATE DATABASE db_library;

USE db_library;

CREATE TABLE BOOK (
	 BookId INT PRIMARY KEY NOT NULL,
	 Title VARCHAR(100) NOT NULL,
     PublisherName VARCHAR(100) NOT NULL
);	   
	   
INSERT INTO BOOK
	(BookId, Title, PublisherName)
VALUES
	('100', 'The Lost Tribe','Picador USA'),
	('202', 'Dreamcatcher','Scribner'),
	('312','Joyland','Titan'),
	('425','Lord of the Flies','Penguin Publishing Group'),
	('521', 'Animal Farm','Harcourt Brace and Company'),
	('522','Burmese Days','HaperCollins Publishers'),
	('723','Crime and Punishment','Doubleday'),
	('724','Anna Karenina','Penguin Classics'),
	('812','Great Expectations','Penguin'),
	('814', 'A Tale of Two Cities','Penguin'), 
	('914','The Hobbit','Houghton Mifflin Harcourt'),
	('915', 'The Return of the King', 'Houghton Mifflin Harcourt'), 
	('428', 'Pride and Prejudice','Doubleday'),
	('429', 'The Da Vinci Code', 'Doubleday'),
	('600', 'The Adventures of Huckleberry Finn','Doubleday'),
	('601', 'The Adventures of Tom Sawyer','Doubleday'),
	('603', 'The Prince and the Pauper','Doubleday'),
    ('604', 'The Innocents Abroad', 'Dover Publication'),
	('412', 'Of Mice and Men', 'Penguin Books'),
	('1001', 'The Iliad','Penguin Books')
;

SELECT * FROM BOOK;


CREATE TABLE BOOK_AUTHORS (
	BookId INT NOT NULL,
	AuthorName VARCHAR(100) NOT NULL,
	FOREIGN KEY (BookId) REFERENCES BOOK(BookId)
);
	

INSERT INTO BOOK_AUTHORS
	(BookId, AuthorName)
VALUES
	('100','Mark Lee'),
	('202','Stephen King'),
	('312','Stephen King'),
	('425','William Golding'), 
	('521','George Orwell'),
	('522','George Orwell'),
	('723','Fyodor Dostoevsky'),
	('724','Leo Tolstoy'),
	('812','Charles Dickens'),
	('814', 'Charles Dickens'),
	('914','J. R. R. Tolkien'),
	('915', 'J. R. R. Tolkien'), 
	('428','Jane Austen'),
	('429', 'Dan Brown'),
	('600','Mark Twain'),
	('601','Mark Twain'),
	('603', 'Mark Twain'),
    ('604', 'Mark Twain'),
	('412', 'John Steinbeck'),
	('1001','Homer')
;

SELECT * FROM book_authors;


CREATE TABLE PUBLISHER (
	 
         Name VARCHAR(100) NOT NULL,
	 Address VARCHAR(100) NOT NULL,
	 Phone VARCHAR(20) NOT NULL
);


INSERT INTO PUBLISHER
	(Name, Address, Phone)
VALUES
	('Picador USA', '175 5th Ave, New York, NY 10010','800-221-7945'),
	('Scribner', '1230 avenue of the Americas, New York, NY 10020','212-698-7000'),
	('Titan House', '144 Southwark St, London SE1 0UP, UK', '44 20 7620 0200'),
	('Penguin Publishing Group', '1745 Broadway, New York, NY 10019', '212-782-9000'), 
	('HarCourt Brace and Company', '175 Fifth Avenue, New York, NY 10010', '646-307-5151'),
	('HarperCollins Publishers', '195 Broadway, New York, NY 10007', '800-242-7737'),
	('Doubleday', '1745 Broadway, New York, NY 10019','212-940-7390'),
	('Penguin Classics', '1745 Broadway New York, NY 10019', '212-782-9000'),
	('Penguin', '1745 Broadway, New York, NY 10019', '212-782-9000'),
	('Penguin', '1745 Broadway, New York, NY 10019', '212-782-9000'),
	('Houghton Mifflin Harcourt', '125 High Street, Boston, MA 02110', '617-351-5000'),
	('Houghton Mifflin Harcourt', '125 High Street, Boston, MA 02110', '617-351-5000'),
	('Doubleday', '1745 Broadway, New York, NY 10019','212-940-7390'),
	('Doubleday', '1745 Broadway, New York, NY 10019','212-940-7390'),
	('Doubleday', '1745 Broadway, New York, NY 10019','212-940-7390'),
	('Doubleday', '1745 Broadway, New York, NY 10019','212-940-7390'),
	('Doubleday', '1745 Broadway, New York, NY 10019','212-940-7390'),
	('Dover Publication', '31 East 2nd Street, Mineola, NY 11501', '516-742-6953'),
	('Penguin Books', '1745 Broadway, New York, NY 10019', '212-782-9000'),
	('Penguin Books', '1745 Broadway, New York, NY 10019', '212-782-9000')
; 

SELECT * FROM PUBLISHER;


CREATE TABLE LIBRARY_BRANCH (
	BranchId INT PRIMARY KEY NOT NULL,
	BranchName VARCHAR(50),
	Address VARCHAR(100)
);

INSERT INTO LIBRARY_BRANCH
	(BranchId, BranchName, Address)
VALUES
	('1', 'Sharpstown', '10 1st Place, Sharpstown, WA 98681'),
	('2', 'Central', '201 Central St., Portlnd, OR 97035'),
	('3', 'Tualatin', '1444 Burnside Ave, Tualatin, OR 97058'),
	('4', 'Beaverton', '652 Jersey St. , Beaverton, OR 97210')
;

SELECT * FROM LIBRARY_BRANCH;

CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL,
	Name VARCHAR(75) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	Phone VARCHAR (20) 
);

INSERT INTO BORROWER
	(CardNo, Name, Address, Phone)
VALUES
	('24', 'John Smith', '2102 SE 7th St, Portland, OR 97035', '503-234-9812'),
	('25', 'Lorraine Smith', '2102 SE 7th St, Portland, OR 97035', '503-234-9812'),
	('38', 'Harold McCarthy', '34 Wilder St, Sharpstown, WA 98685', '360-574-2121'),
	('39', 'Patricia McCarthy', '34 Wilder St, Sharpstown, WA 98685', '360-574-2121'),
	('43', 'George Blakely', '23 Chestnut Ave, Beaverton, OR 97210', '503-784-2692'),
	('44', 'Amanda Blakely', '23 Chestnut Ave, Beaverton, OR 97210', '503-784-2692'),
	('72', 'Lee Huntington', '735 E. Third Ave, Tualatin, OR 97058', '971-220-3971'),
	('104', 'Georgia Peach', '2275 SW. Dalia St, Tualatin, OR 97052', '503-243-7791')
;

SELECT * FROM BORROWER;



CREATE TABLE BOOK_COPIES (
	BookId INT NOT NULL,
	BranchId INT NOT NULL,
	No_Of_Copies INT NOT NULL
	FOREIGN KEY(BookId) REFERENCES BOOK(BookId),
	FOREIGN KEY(BranchId) REFERENCES Library_Branch(BranchId),
);


INSERT INTO BOOK_COPIES
	(BookId, BranchId, No_Of_Copies)
VALUES
	('100', '1', '5'),
	('202', '1', '4'),
	('521', '1', '6'),
	('522', '1', '4'),
	('724', '1', '2'),
	('812', '1', '3'),
	('814', '1', '2'),
	('428', '1', '5'),
	('429', '1', '3'),
	('601', '1', '4'),
	('312', '2', '5'),
	('425', '2', '4'),
	('428', '2', '3'),
	('522', '2', '2'),
	('600', '2', '5'),
	('723', '2', '3'),
	('724', '2', '2'),
	('814', '2', '2'),
	('914', '2', '5'),
	('1001', '2', '7'),
	('100', '3', '5'),
	('202', '3', '2'),
	('312', '3', '6'),
	('429', '3', '8'),
	('521', '3', '3'),
	('601', '3', '8'),
	('812', '3', '4'),
	('814', '3', '2'),
	('914', '3', '5'),
	('915', '3', '8'),
	('100', '4', '6'),
	('312', '4', '9'),
	('412', '4', '6'),
	('428', '4', '5'),
	('522', '4', '4'),
	('603', '4', '3'),
	('604', '4', '2'),
	('723', '4', '5'),
	('724', '4', '3'),
	('914', '4', '5'),
	('1001','4', '6')
;

SELECT * FROM BOOK_COPIES;



CREATE TABLE BOOK_LOANS (
	BookId INT NOT NULL,
	BranchId INT NOT NULL,
	CardNo INT NOT NULL,
	DateOut VARCHAR(20),
	DueDate VARCHAR(20),
	FOREIGN KEY(BookId) REFERENCES BOOK(BookId),
	FOREIGN KEY(BranchId) REFERENCES Library_Branch(BranchId),
	FOREIGN KEY(CardNo) REFERENCES BORROWER(CardNo)
);


INSERT INTO BOOK_LOANS
	(BookId, BranchId, CardNo, DateOut, DueDate)
VALUES
	('312', '2', '24', '06-28-2017', '07-19-2017'),
	('425', '2', '24', '06-28-2017', '07-19-2017'),
	('724', '2', '24', '06-30-2017', '07-21-2017'),
	('814', '2', '24', '07-07-2017', '07-28-2017'),
	('914', '2', '24', '07-07-2017', '07-28-2017'),
	('1001', '2', '24', '07-07-2017', '07-28-2017'),
	('428', '2', '25', '06-28-2017', '07-19-2017'),
	('522', '2', '25', '06-28-2017', '07-19-2017'),
	('600', '2', '25', '06-28-2017', '07-19-2017'),
	('723', '2', '25', '07-07-2017', '07-28-2017'),
	('100', '4', '25', '07-08-2017', '07-29-2017'),
	('100', '1', '38', '07-01-2017', '07-22-2017'), 
	('202', '1', '38', '07-01-2017', '07-22-2017'), 
	('522', '1', '38', '07-01-2017', '07-22-2017'), 
	('724', '1', '38', '07-01-2017', '07-22-2017'), 
	('814', '1', '38', '07-01-2017', '07-22-2017'), 
	('428', '1', '38', '07-01-2017', '07-22-2017'), 
	('601', '1', '38', '07-01-2017', '07-22-2017'),
	('521', '1', '39', '07-05-2017', '07-26-2017'),  
	('812', '1', '39', '07-05-2017', '07-26-2017'),
	('429', '1', '39', '07-05-2017', '07-26-2017'),
	('100', '4', '43', '06-30-2017', '07-21-2017'),	
	('312', '4', '43', '06-30-2017', '07-21-2017'),
	('412', '4', '43', '06-30-2017', '07-21-2017'),
	('428', '4', '43', '06-30-2017', '07-21-2017'), 
	('522', '4', '43', '06-30-2017', '07-21-2017'),
	('603', '4', '43', '06-30-2017', '07-21-2017'),
	('604', '4', '43', '06-30-2017', '07-21-2017'),
	('723', '4', '43', '06-30-2017', '07-21-2017'),
	('724', '4', '44', '07-08-2017', '07-29-2017'),
	('914', '4', '44', '07-08-2017', '07-29-2017'),
	('1001','4', '44', '07-08-2017', '07-29-2017'),
	('425', '2', '44', '07-10-2017', '07-31-2017'),
	('100', '3', '72', '06-21-2017', '07-12-2017'),
	('202', '3', '72', '06-21-2017', '07-12-2017'),
	('312', '3', '72', '06-21-2017', '07-12-2017'),
	('429', '3', '72', '06-21-2017', '07-12-2017'),
	('521', '3', '72', '06-21-2017', '07-12-2017'),
	('601', '3', '72', '06-21-2017', '07-12-2017'),
	('812', '3', '72', '06-21-2017', '07-12-2017'),
	('814', '3', '72', '06-21-2017', '07-12-2017'),
	('914', '3', '72', '06-21-2017', '07-12-2017'),
	('915', '3', '72', '06-21-2017', '07-12-2017'),
	('202', '3', '104', '06-27-2017', '07-18-2017'),
	('312', '3','104', '06-27-2017', '07-18-2017'),
	('429', '3', '104','06-27-2017', '07-18-2017'),
	('521', '3', '104', '06-27-2017', '07-18-2017'),
	('601', '3', '104', '06-27-2017', '07-18-2017'),
	('812', '3', '104', '06-27-2017', '07-18-2017'),
	('814', '3', '104', '06-27-2017', '07-18-2017'),
	('914', '3', '104', '06-21-2017', '07-12-2017'),
	('915', '3', '104', '06-21-2017', '07-12-2017'),
	('1001', '2', '104', '06-27-2017', '07-18-2017')
;
	
SELECT * FROM BOOK_LOANS;

/* End of Creation of Library Tables */	


/* Stored Procedures and Queries */
	
USE db_library
GO	
	
/* Q.1: Number of copies of "The Lost Tribe" that are owned by the library branch "Sharpstown" */


CREATE PROCEDURE dbo.uspLostTribeSharpstown @Title varchar(50), @BranchName varchar(50)
AS
SELECT BOOK.Title, BOOK_COPIES.No_Of_Copies, LIBRARY_BRANCH.BranchName
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.branchid = BOOK_COPIES.branchid
WHERE BOOK.Title = @Title AND LIBRARY_BRANCH.BranchName= @BranchName 

GO

EXEC dbo.uspLostTribeSharpstown @Title = 'The Lost Tribe', @BranchName = 'Sharpstown'


/* End Query #1 */

/* Q.2: Number of copies of the book "The Lost Tribe" that are owned by each library branch?*/

CREATE PROCEDURE dbo.uspGetNo_Of_Copies @Title varchar(50)
AS
SELECT BOOK.Title, BOOK_COPIES.No_Of_Copies, LIBRARY_BRANCH.BranchName
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.branchid = BOOK_COPIES.branchid
WHERE BOOK.Title = @Title

GO


EXEC dbo.uspGetNo_Of_Copies @Title = 'The Lost Tribe' 

/* End Query #2 */


/* Q.3: Names of all borrowers who do not have any books checked out. */

USE db_library
GO


CREATE PROCEDURE dbo.uspNameNoBooks @DateOut varchar(20)
AS
SELECT BORROWER.Name, BOOK_LOANS.DateOut
FROM  BOOK_LOANS
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo  
WHERE DateOut = @DateOut

GO


EXEC dbo.uspNameNoBooks @DateOut = 'Null'



/* All of my borrowers had a book checked out and thus the result did not list any borrowers. */
/* End Query #3 */	


/* Q.4: Loaned books from Sharpstown whose DueDate is today. List book title, the borrower's name, and the borrower's address. */

USE db_library
GO

CREATE PROCEDURE dbo.uspDueToday @BranchName varchar(50), @DueDate varchar(20) 
AS
SELECT LIBRARY_BRANCH.BranchName, BOOK_LOANS.DueDate, BOOK.Title, BORROWER.Name, BORROWER.Address 
FROM BOOK_LOANS
INNER JOIN BOOK ON BOOK_LOANS.BookId = BOOK.BookId
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
INNER JOIN LIBRARY_BRANCH ON BOOK_LOANS.BranchId = LIBRARY_BRANCH.BranchId
WHERE BOOK_LOANS.DueDate = @DueDate AND LIBRARY_BRANCH.BranchName = @BranchName

GO

EXEC dbo.uspDueToday @BranchName = 'Sharpstown', @DueDate = '07-22-2017'
  
/* End Query #4 */	



/* Q.5: Retrieve the branch name and the total number of books on loan from each branch. */

USE db_library
GO
 

CREATE PROCEDURE dbo.uspbooksloaned
AS 
SELECT LIBRARY_BRANCH.BranchName, COUNT(BOOK_LOANS.DateOut) AS 'Number of Books on Loan'
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchId = BOOK_LOANS.BranchId
 GROUP BY LIBRARY_BRANCH.BranchName
GO

EXECUTE dbo.uspbooksloaned  


/* End Query #5 */
  


/* Q.6: List names, addresses, and number of books for borrowers with more than 5 books checked out */

USE db_library
GO


 CREATE PROCEDURE dbo.uspmorethanfivebooks
 AS
 SELECT BORROWER.Name, BORROWER.Address, COUNT(BOOK_LOANS.DateOut) AS 'More than 5 books Checked Out.'
 FROM BOOK_LOANS
 INNER JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo
 GROUP BY BORROWER.Name, BORROWER.Address
 HAVING COUNT(BOOK_LOANS.DateOut)>5

 GO

 EXEC dbo.uspmorethanfivebooks 

 GO

  EXEC dbo.uspmorethanfivebooks


/* End Query #6 */




/* Q.7: For the library "Central", list the title and number of copies of books by "Stephen King". */

USE db_library
GO

CREATE PROCEDURE dbo.uspbookbyauthor @AuthorName varchar(100), @BranchName varchar(50)
AS
SELECT BOOK.Title, BOOK_COPIES.No_Of_Copies
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
INNER JOIN BOOK_AUTHORS ON BOOK_AUTHORS.BookId = BOOK.BookId
WHERE BOOK_AUTHORS.AuthorName = @AuthorName AND LIBRARY_BRANCH.BranchName = @BranchName

GO

EXEC dbo.uspbookbyauthor @AuthorName = 'Stephen King', @BranchName = 'Central'


/* End Query #7 */
