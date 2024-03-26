-- CREATE TABLE 
CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR2(50) NOT NULL,
    MemberType VARCHAR2(50) NOT NULL,
    CONSTRAINT MemberTypeCheck CHECK(MemberType IN ('Student', 'Staff'))
);

CREATE TABLE MemberType (
    MemberType VARCHAR2(50) PRIMARY KEY,
    MaximumBorrowAllowed INT NOT NULL,
    CONSTRAINT MemberType_Check CHECK(MemberType IN ('Student', 'Staff')),
    CONSTRAINT MaximumBorrowAllowedCheck 
        CHECK((MemberType = 'Student' AND MaximumBorrowAllowed = 5) OR 
              (MemberType = 'Staff' AND MaximumBorrowAllowed = 10))
);


CREATE TABLE Resources (
ResourceID INT PRIMARY KEY,
Title VARCHAR2(50) NOT NULL,
ResourceType VARCHAR2(25) NOT NULL,
ClassNumber INT NOT NULL,
LoanPeriod INT NOT NULL, 
FloorNumber INT NOT NULL,
ShelfNumber VARCHAR2(50) NOT NULL,
CONSTRAINT LoanPeriodcheck CHECK(LoanPeriod >= 0 and LoanPeriod <=14),
CONSTRAINT FloorNumbercheck CHECK(FloorNumber >= 1 and FloorNumber <=3)
);


CREATE TABLE ResourceCopies (
CopyID INT PRIMARY KEY,
ResourceID INT NOT NULL,
CONSTRAINT FK_ResourceID FOREIGN KEY (ResourceID) REFERENCES Resources(ResourceID)
);


CREATE TABLE Fine (
MemberID INT NOT NULL,
FineDate DATE NOT NULL,
FineAmount INT DEFAULT 1,
PaymentStatus VARCHAR2(50) NOT NULL,
PRIMARY KEY(MemberID, FineDate),
CONSTRAINT FK_MemberID FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);


CREATE TABLE Reservation (
MemberID INT NOT NULL,
ResourceID INT NOT NULL,
ReservationDate DATE NOT NULL,
ReservationStatus VARCHAR2(20) NOT NULL,
RemainingChances INT NOT NULL,
PRIMARY KEY (MemberID, ResourceID, ReservationDate),
CONSTRAINT FK_MemberID_Reservation FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
CONSTRAINT FK_ResourceID_Reservation FOREIGN KEY (ResourceID) REFERENCES Resources(ResourceID),
CONSTRAINT RemainingChancescheck CHECK(RemainingChances >= 0 and RemainingChances <=3)
);


CREATE TABLE Loan (
MemberID INT NOT NULL,
CopyID INT NOT NULL,
LoanDate DATE NOT NULL,
ReturnDate DATE,
LoanStatus VARCHAR2(25) NOT NULL,
PRIMARY KEY (MemberID, CopyID,LoanDate),
CONSTRAINT FK_MemberID_Loan FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
CONSTRAINT FK_CopyID_Loan FOREIGN KEY (CopyID) REFERENCES ResourceCopies(CopyID)
);


CREATE TABLE LoanHistory (
MemberID INT NOT NULL,
CopyID INT NOT NULL,
LoanDate DATE NOT NULL,
ReturnDate DATE,
PRIMARY KEY (MemberID, CopyID,LoanDate)
);