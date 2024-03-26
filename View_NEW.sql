
-- 1. MemberDetails View:
-- This view merges details from the `Member` and `Fine` tables, offering a comprehensive overview of each member.

CREATE VIEW MemberDetails AS
SELECT
    m.MemberID,
    m.MemberName,
    m.MemberType,
    NVL(SUM(f.FineAmount), 0) AS TotalFine,
    CASE
        WHEN NVL(SUM(f.FineAmount), 0) >= 10 THEN 'Suspend'
        ELSE 'Active'
    END AS MemberStatus
FROM
    Member m
LEFT JOIN
    Fine f ON m.MemberID = f.MemberID AND f.PaymentStatus = 'Unpaid'
GROUP BY
    m.MemberID, m.MemberName, m.MemberType;

select*from MemberDetails;
   

-- 2. ResourceStatus View:
   -- This view provides information about each resource, including the number of copies and available copies.
   
CREATE VIEW ResourceStatus AS
SELECT
    r.ResourceID,
    r.Title,
    COUNT(rc.ResourceID) AS TotalCopies,
    COUNT(rc.ResourceID) - COUNT(l.CopyID) AS RemainingCopies
FROM
    Resources r
LEFT JOIN
    ResourceCopies rc ON r.ResourceID = rc.ResourceID
LEFT JOIN
    Loan l ON rc.CopyID = l.CopyID AND l.LoanStatus != 'Returned'
GROUP BY
    r.ResourceID, r.Title
ORDER BY
    r.ResourceID ASC;

select*from ResourceStatus;
   

-- 3. FineSummary View:
   -- This view provides a summary of fines, including member details.
   
from uk_covid19 import Cov19API
import json
   
   