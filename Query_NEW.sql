
-- 1. List of Members with Overdue Loans:

SELECT
    m.MemberID,
    m.MemberName,
    l.CopyID,l.LoanStatus
FROM
    Member m
JOIN
    Loan l ON m.MemberID = l.MemberID
WHERE
    l.LoanStatus = 'Overdue';
   
-- 2. List of the Top five resources that are often reserved

SELECT*FROM (
   SELECT
       r.ResourceID,
       r.Title,
       COUNT(res.ResourceID) AS ReservationCount
   FROM
       Resources r
   LEFT JOIN
       Reservation res ON r.ResourceID = res.ResourceID
   GROUP BY
       r.ResourceID, r.Title
   ORDER BY
       ReservationCount DESC) 
   WHERE ROWNUM <= 5;
   

-- 3. Members with Unpaid Fines:
SELECT
    m.MemberID,
    m.MemberName,
    SUM(f.FineAmount) AS TotalUnpaidFines
FROM
    Member m
JOIN
    Fine f ON m.MemberID = f.MemberID
WHERE
    f.PaymentStatus = 'Unpaid'
GROUP BY
    m.MemberID, m.MemberName;

-- 4. The 5 most popular resources:
-- This query identifies the total number of loans (including Loan and LoanHistory) for Resources
SELECT*FROM (
    SELECT 
        r.ResourceID, 
        r.Title, 
        NVL(LoanHistoryCount, 0) + NVL(LoanCount, 0) AS TotalLoanCount
    FROM Resources r

    LEFT JOIN (
        SELECT rc.ResourceID, COUNT(lh.CopyID) AS LoanHistoryCount
        FROM ResourceCopies rc
        LEFT JOIN LoanHistory lh ON lh.CopyID = rc.CopyID
        GROUP BY rc.ResourceID
    ) lh_counts ON r.ResourceID = lh_counts.ResourceID

    LEFT JOIN (
        SELECT rc.ResourceID, COUNT(l.CopyID) AS LoanCount
        FROM ResourceCopies rc
        LEFT JOIN Loan l ON l.CopyID = rc.CopyID
        GROUP BY rc.ResourceID
    ) l_counts ON r.ResourceID = l_counts.ResourceID
    ORDER BY TotalLoanCount DESC) WHERE ROWNUM <=5;
     
     
-- 5. Top 5 Members who often borrow resources from library:
 -- This query identifies the total number of loans (including Loan and LoanHistory) for Members
SELECT*FROM(
    SELECT
        m.MemberID,
        m.MemberName,
        NVL(LoanCount, 0) + NVL(LoanHistoryCount, 0) AS TotalLoans
    FROM
        Member m
    LEFT JOIN (
        SELECT
            l.MemberID,
            COUNT(l.MemberID) AS LoanCount
        FROM
            Loan l
        GROUP BY
            l.MemberID
    ) LoanData ON m.MemberID = LoanData.MemberID
    LEFT JOIN (
        SELECT
            lh.MemberID,
            COUNT(lh.MemberID) AS LoanHistoryCount
        FROM
            LoanHistory lh
        GROUP BY
            lh.MemberID
    ) LoanHistoryData ON m.MemberID = LoanHistoryData.MemberID
    ORDER BY
        TotalLoans DESC) WHERE ROWNUM <=5;
   

-- 6. Resources with No Reservations:

SELECT
    r.ResourceID,
    r.Title,
    r.ResourceType
FROM
    Resources r
WHERE
    r.ResourceID NOT IN (SELECT DISTINCT ResourceID FROM Reservation);


-- 7. Resources with Multiple Copies:
-- This query identifies the loan situation of resources with more than one copy.
SELECT
    r.ResourceID,
    r.Title,
    COUNT(rc.ResourceID) AS CopiesNO,
    COUNT(l.LoanStatus) AS CheckoutNO
FROM
    Resources r
LEFT JOIN
    ResourceCopies rc ON r.ResourceID = rc.ResourceID
LEFT JOIN
    Loan l ON rc.CopyID = l.CopyID AND l.LoanStatus != 'Returned'
GROUP BY
    r.ResourceID, r.Title
HAVING
    COUNT(rc.ResourceID)>1
ORDER BY
    ResourceID ASC;

-- 8. Total Number of Loans per Floor:
   -- This query provides the total number of loans for each floor in the library.

SELECT
    r.FloorNumber,
    COUNT(l.CopyID) AS TotalLoans
FROM
    Resources r
LEFT JOIN
    ResourceCopies rc ON r.ResourceID = rc.ResourceID
LEFT JOIN
    Loan l ON rc.CopyID = l.CopyID AND l.LoanStatus != 'Returned'
GROUP BY
    r.FloorNumber;


-- 9. Cancellation of Reservation:
   -- This query identifies members who cancel the reservation the most.
SELECT
    m.MemberID,
    m.MemberName,
    COUNT(rs.ReservationStatus) AS TotalCancellation
FROM
    Member m
LEFT JOIN
    Reservation rs ON m.MemberID = rs.MemberID
WHERE
    rs.ReservationStatus = 'Cancelled'
GROUP BY
    m.MemberID, m.MemberName
ORDER BY
    TotalCancellation DESC;

-- 10. Remaining Quota:
    -- This query calculates the remaining quota of resources each member can borrow.
SELECT 
    m.MemberID, 
    m.MemberName, 
    mt.MaximumBorrowAllowed - COUNT(l.CopyID) AS RemainingQuota
FROM 
    Member m
LEFT JOIN 
    MemberType mt ON m.MemberType = mt.MemberType
LEFT JOIN 
    Loan l ON l.MemberID = m.MemberID AND l.LoanStatus != 'Returned'
GROUP BY 
    m.MemberID, m.MemberName, mt.MaximumBorrowAllowed
ORDER BY 
    m.MemberID ASC;


-- 11. Members with the Most Successful Reservations:
   -- This query identifies members with the most successfully reserved resources.
SELECT * FROM (
SELECT
    m.MemberID,
    m.MemberName,
    COUNT(res.ResourceID) AS SuccessfulReservations
FROM
    Member m
LEFT JOIN
    Reservation res ON m.MemberID = res.MemberID AND res.ReservationStatus = 'Completed'
WHERE
    res.ResourceID IS NOT NULL
GROUP BY
    m.MemberID, m.MemberName
ORDER BY
    SuccessfulReservations DESC) T WHERE ROWNUM <=5;

-- 12.Resources with Most Overdue Loans:
-- This query identifies resources with the highest number of overdue loans.
SELECT * FROM (
SELECT
    r.ResourceID,
    r.Title,
    COUNT(l.CopyID) AS NumOverdueLoans
FROM
    Resources r
LEFT JOIN
    ResourceCopies rc ON r.ResourceID = rc.ResourceID
LEFT JOIN
    Loan l ON rc.CopyID = l.CopyID AND l.LoanStatus = 'Overdue' 
GROUP BY
    r.ResourceID, r.Title
ORDER BY
    NumOverdueLoans DESC) T WHERE ROWNUM <= 5;

