create schema internship;
use internship;
Create table Books(
	Book_ID int Primary key ,
    Title varchar(50),
    Author varchar(50),
    Publication_Year date,
    Genre varchar(30)
    );
describe Books;

Create table Members(
	Member_ID int Primary key,
    Name varchar(40),
    Address varchar(100),
    Phone_number varchar(20)
    );
describe Memeber;

Create table Transactions(
	Transaction_ID int primary key,
    Book_ID int,
    Member_ID int,
    Borrow_date Date,
    Return_Date Date,
    Foreign Key (Book_ID) references Books(Book_ID),
    Foreign Key (Member_id) references Members(Member_ID)
);
describe Transactions;

#INSERTING VALUES IN THE TABLES
INSERT INTO Books (Book_ID, Title, Author, Publication_Year, Genre)
VALUES
  (1, 'The Lord of the Rings', 'J.R.R. Tolkien', '1954-12-29', 'Fantasy'),
  (2, 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'Fiction'),
  (3, 'Pride and Prejudice', 'Jane Austen', '1813-01-28', 'Romance'),
  (4, 'The Hobbit', 'J.R.R. Tolkien', '1937-09-21', 'Fantasy'),
  (5, '1984', 'George Orwell', '1949-06-08', 'Dystopian'),
  (6, 'Pride and Prejudice and Zombies', 'Seth Grahame-Smith', '2009-09-15', 'Horror Comedy'),
  (7, 'The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', '1979-10-12', 'Science Fiction Comedy'),
  (8, 'The Silent Patient', 'Alex Michaelides', '2019-02-05', 'Psychological Thriller'),
  (9, 'The Girl on the Train', 'Paula Hawkins', '2015-01-20', 'Psychological Thriller'),
  (10, 'The Da Vinci Code', 'Dan Brown', '2003-03-28', 'Historical Fiction');
SELECT * from Books;

INSERT INTO Members (Member_ID, Name, Address, Phone_Number)
VALUES
    (4, 'David Miller', '543 Oak St', '987-654-3210'),
    (5, 'Emily Brown', '789 Pine St', '555-555-5555'),
    (6, 'Frank Davis', '123 Cedar St', '123-456-7890'),
    (7, 'Grace Lee', '456 Maple St', '987-654-3210'),
    (8, 'Henry Wilson', '789 Birch St', '555-555-5555'),
    (9, 'Isabella Clark', '123 Elm St', '123-456-7890'),
    (10, 'Jacob Moore', '456 Willow St', '987-654-3210'),
    (11, 'Karen Taylor', '789 Ash St', '555-555-5555'),
    (12, 'Liam Nelson', '123 Spruce St', '123-456-7890'),
    (13, 'Mia Carter', '456 Fir St', '987-654-3210');
select * from Members;

INSERT INTO Transactions (Transaction_ID, Book_ID, Member_ID, Borrow_Date, Return_Date)
VALUES
    (4, 4, 4, '2023-11-20', '2023-12-01'),
    (5, 5, 5, '2023-11-22', '2023-12-03'),
    (6, 6, 6, '2023-11-25', '2023-12-05'),
    (7, 7, 7, '2023-11-27', '2023-12-07'),
    (8, 8, 8, '2023-11-29', '2023-12-09'),
    (9, 9, 9, '2023-12-01', '2023-12-11'),
    (10, 10, 10, '2023-12-03', '2023-12-13'),
    (11, 3, 11, '2023-12-05', '2023-12-15'),
    (12, 2, 12, '2023-12-07', '2023-12-17'),
    (13, 1, 13, '2023-12-09', '2023-12-19');
SELECT * FROM Transactions;

#update of the data , delete of the data and retreive of the data
#updating the values of the books table having id 7
UPDATE Books
SET Genre = 'Science Fiction'
WHERE Book_ID = 7;
select * from Books;

#deleting of a data from the table Members
DELETE FROM Members
WHERE Member_ID = 3;

select * from Members;

#FILTERING DATA WITH THE WHERE CLAUSE
DELETE FROM Members
WHERE Member_ID = 3;

#SORTING OF DATA WITH THE ORDER BY CLAUSE
SELECT * FROM Books ORDER BY Publication_Year DESC;

#Grouping data with the GROUP BY clause and using aggregate functions
SELECT Author, COUNT(*) AS BookCount
FROM Books
GROUP BY Author;

#joining of two tables Transactions and Members
SELECT B.Title, M.Name
FROM Books B
JOIN Transactions T ON B.Book_ID = T.Book_ID
JOIN Members M ON T.Member_ID = M.Member_ID;

	
    
