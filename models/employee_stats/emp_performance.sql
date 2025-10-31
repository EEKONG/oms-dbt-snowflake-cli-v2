SELECT
    EMP.EmployeeID,
    EMP.FullName,
    SUM(OrdF.OrderCount) AS OrderCount,
    SUM(OrdF.TotalRevenue) AS TotalRevenue
FROM 
    {{ ref('employees_stg') }} EMP
JOIN
    {{ ref('order_facts') }} OrdF
ON
    EMP.EmployeeID = OrdF.EmployeeID
GROUP BY
    EMP.EmployeeID,
    EMP.FullName