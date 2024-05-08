SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId 
    FROM Employee
    GROUP BY ManagerId
    HAVING COUNT(*) >= 5
);