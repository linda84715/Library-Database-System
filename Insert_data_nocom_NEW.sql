-- Insert data into Member table
INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(201, 'John Doe', 'Student');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(202, 'Jane Smith', 'Staff');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(203, 'Bob Johnson', 'Student');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(204, 'Alice Brown', 'Staff');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(205, 'Charlie Davis', 'Student');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(206, 'Eva White', 'Staff');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(207, 'David Lee', 'Student');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(208, 'Grace Miller', 'Staff');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(209, 'Frank Wilson', 'Student');

INSERT INTO Member (MemberID, MemberName, MemberType) VALUES
(210, 'Helen Taylor', 'Staff');



-- Insert data into MemberType table
INSERT INTO MemberType (MemberType, MaximumBorrowAllowed) VALUES
('Student', 5);

INSERT INTO MemberType (MemberType, MaximumBorrowAllowed) VALUES
('Staff', 10);



-- Insert data into Resources table
INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(1, 'Introduction to Computer Science', 'Book', 1, 14, 2, 'A200');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(2, 'The Art of Programming', 'Book', 1, 14, 2, 'B210');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(3, 'Chemistry Basics', 'Book', 2, 14, 3, 'C300');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(4, 'History of Ancient Civilizations', 'DVD', 3, 14, 1, 'A100');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(5, 'Physics for Beginners', 'Book', 2, 14, 3, 'B310');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(6, 'Web Development Guide', 'Book', 1, 14, 2, 'B220');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(7, 'Introduction to Poetry', 'DVD', 4, 2, 1, 'B110');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(8, 'Environmental Science Explained', 'Video', 7, 2, 2, 'B230');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(9, 'Theatre and Drama Techniques', 'CD', 8, 14, 1, 'B130');

INSERT INTO Resources (ResourceID, Title, ResourceType, ClassNumber, LoanPeriod, FloorNumber, ShelfNumber) VALUES
(10, 'Language Learning Essentials', 'Book', 9, 0, 3, 'B340');






-- Insert data into ResourceCopies table
INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(1001, 1);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(1002, 1);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(2001, 2);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(3001, 3);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(3002, 3);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(4001, 4);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(5001, 5);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(5002, 5);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(5003, 5);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(6001, 6);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(7001, 7);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(8001, 8);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(9001, 9);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(10001, 10);

INSERT INTO ResourceCopies (CopyID, ResourceID) VALUES
(10002, 10);


-- Insert data into Fine table
INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(204, TO_DATE('2023-10-04', 'YYYY-MM-DD'), 2, 'Paid'); 

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(205, TO_DATE('2023-11-27', 'YYYY-MM-DD'), 1, 'Paid'); 

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-21', 'YYYY-MM-DD'), 1, 'Unpaid'); 

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 1, 'Unpaid');   

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-23', 'YYYY-MM-DD'), 1, 'Unpaid');  

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-24', 'YYYY-MM-DD'), 1, 'Unpaid');  

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-25', 'YYYY-MM-DD'), 1, 'Unpaid'); 

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-26', 'YYYY-MM-DD'), 1, 'Unpaid'); 

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-27', 'YYYY-MM-DD'), 1, 'Unpaid'); 

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-28', 'YYYY-MM-DD'), 1, 'Unpaid');

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-29', 'YYYY-MM-DD'), 1, 'Unpaid');

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(209, TO_DATE('2023-11-30', 'YYYY-MM-DD'), 1, 'Unpaid');

INSERT INTO Fine (MemberID, FineDate, FineAmount, PaymentStatus) VALUES
(210, TO_DATE('2023-11-30', 'YYYY-MM-DD'), 1, 'Unpaid'); 




-- Insert data into Reservation table
INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES  
(202, 7, TO_DATE('2023-10-02', 'YYYY-MM-DD'), 'Completed', 3);

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES  
(206, 4, TO_DATE('2023-10-06', 'YYYY-MM-DD'), 'Completed', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES  
(201, 9, TO_DATE('2023-10-14', 'YYYY-MM-DD'), 'Completed', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES  
(204, 3, TO_DATE('2023-10-08', 'YYYY-MM-DD'), 'Completed', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES  
(208, 7, TO_DATE('2023-11-24', 'YYYY-MM-DD'), 'Completed', 3);

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES  
(206, 8, TO_DATE('2023-11-25', 'YYYY-MM-DD'), 'Completed', 3);

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES
(210, 6, TO_DATE('2023-11-12', 'YYYY-MM-DD'), 'Waitlisted', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES
(204, 2, TO_DATE('2023-11-16', 'YYYY-MM-DD'), 'Waitlisted', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES 
(210, 1, TO_DATE('2023-11-29', 'YYYY-MM-DD'), 'Waitlisted', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES 
(203, 4, TO_DATE('2023-10-12', 'YYYY-MM-DD'), 'Completed', 3); 
------
INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES 
(205, 6, TO_DATE('2023-10-11', 'YYYY-MM-DD'), 'Cancelled', 0); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES 
(205, 7, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 'Cancelled', 0); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES 
(203, 8, TO_DATE('2023-11-28', 'YYYY-MM-DD'), 'Notified', 3); 

INSERT INTO Reservation (MemberID, ResourceID, ReservationDate, ReservationStatus, RemainingChances) VALUES 
(202, 7, TO_DATE('2023-11-26', 'YYYY-MM-DD'), 'Notified', 2); 






-- Insert data into Loan table
INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES
(205, 8001, TO_DATE('2023-11-24', 'YYYY-MM-DD'), TO_DATE('2023-11-27', 'YYYY-MM-DD'), 'Returned'); 

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES
(209, 6001, TO_DATE('2023-11-06', 'YYYY-MM-DD'), NULL, 'Overdue'); 

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES
(210, 2001, TO_DATE('2023-11-15', 'YYYY-MM-DD'), NULL, 'Overdue');  

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES
(204, 5001, TO_DATE('2023-11-20', 'YYYY-MM-DD'), NULL, 'Checkedout');

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES
(201, 5002, TO_DATE('2023-11-23', 'YYYY-MM-DD'), NULL, 'Checkedout');

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES 
(205, 3001, TO_DATE('2023-11-25', 'YYYY-MM-DD'), NULL, 'Checkedout');

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES 
(205, 1001, TO_DATE('2023-11-28', 'YYYY-MM-DD'), NULL, 'Checkedout'); 

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES 
(207, 4001, TO_DATE('2023-11-20', 'YYYY-MM-DD'), NULL, 'Checkedout');

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES 
(203, 7001, TO_DATE('2023-11-24', 'YYYY-MM-DD'), TO_DATE('2023-11-25', 'YYYY-MM-DD'), 'Returned'); 

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES 
(208, 7001, TO_DATE('2023-11-26', 'YYYY-MM-DD'), TO_DATE('2023-11-27', 'YYYY-MM-DD'), 'Returned');  

INSERT INTO Loan (MemberID, CopyID, LoanDate, ReturnDate, LoanStatus) VALUES 
(206, 8001, TO_DATE('2023-11-27', 'YYYY-MM-DD'), TO_DATE('2023-11-29', 'YYYY-MM-DD'), 'Returned'); 




-- Insert data into LoanHistory table
INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(204, 7001, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'));  
INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(202, 7001, TO_DATE('2023-10-04', 'YYYY-MM-DD'), TO_DATE('2023-10-06', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(209, 4001, TO_DATE('2023-10-04', 'YYYY-MM-DD'), TO_DATE('2023-10-10', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(206, 4001, TO_DATE('2023-10-10', 'YYYY-MM-DD'), TO_DATE('2023-10-18', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES 
(205, 9001, TO_DATE('2023-10-12', 'YYYY-MM-DD'), TO_DATE('2023-10-16', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(201, 9001, TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-19', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES 
(210, 3001, TO_DATE('2023-10-04', 'YYYY-MM-DD'), TO_DATE('2023-10-18', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES 
(202, 3002, TO_DATE('2023-10-06', 'YYYY-MM-DD'), TO_DATE('2023-10-15', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES 
(204, 3002, TO_DATE('2023-10-15', 'YYYY-MM-DD'), TO_DATE('2023-10-20', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES 
(207, 4001, TO_DATE('2023-10-10', 'YYYY-MM-DD'), TO_DATE('2023-10-22', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES 
(203, 4001, TO_DATE('2023-10-22', 'YYYY-MM-DD'), TO_DATE('2023-11-02', 'YYYY-MM-DD')); 

INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(204, 8001, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2023-10-04', 'YYYY-MM-DD'));  
----
INSERT INTO LoanHistory (MemberID, CopyID, LoanDate, ReturnDate) VALUES
(201, 6001, TO_DATE('2023-10-02', 'YYYY-MM-DD'), TO_DATE('2023-10-12', 'YYYY-MM-DD'));


