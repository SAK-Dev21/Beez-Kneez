-- Query 1: Customer Contact and Membership

SELECT CustomerName as 'Customer Name',
	TelNo as 'Telephone Number',
    Email as 'Email Address',
    CASE
		WHEN MembershipLevel IS NULL THEN 'No'
        ELSE 'Yes'
	END AS 'Member'
FROM Customer
ORDER BY CustomerName;

-- Query 2: Most Frequent Customer

SELECT 
C.CustomerID,
C.CustomerName, 
C.TelNo as 'Phone Number', 
C.Email,
COUNT(C.CustomerID) as Visits
From Customer as C
INNER JOIN Appointments as Ap
	ON C.CustomerID = AP.CustomerID
GROUP BY C.CustomerID
ORDER BY Visits ASC
;

/*
SELECT CustomerID, COUNT(CustomerID) as 'Visits'
FROM Appointments
GROUP BY CustomerID
;
*/

-- Query 3: Highest Spending Customer

SELECT 
C.CustomerID,
C.CustomerName, 
SUM(TotalCostAfterDiscount) as 'Overall Money Spent'
From Customer as C
INNER JOIN Appointments as Ap
	ON C.CustomerID = Ap.CustomerID
GROUP BY C.CustomerID
ORDER BY SUM(TotalCostAfterDiscount) ASC
;

-- Query 4: Spending Comparison for Non-Members

SELECT 
C.CustomerName, 
ROUND( SUM(TotalCostAfterDiscount), 2) as 'Total Amount Spent',
ROUND( SUM(TotalCostAfterDiscount) * (1-0.05), 2) as 'Total BRONZE',
ROUND( SUM(TotalCostAfterDiscount) * (1-0.1), 2) as 'Total SILVER',
ROUND( SUM(TotalCostAfterDiscount) * (1-0.15), 2) as 'Total GOLD'
FROM Customer as C
INNER JOIN Appointments as Ap
	ON C.CustomerID = Ap.CustomerID
WHERE C.MembershipLevel IS NULL
GROUP BY C.CustomerID
ORDER BY SUM(TotalCostAfterDiscount)
;

