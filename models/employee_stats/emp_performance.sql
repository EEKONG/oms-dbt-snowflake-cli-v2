SELECT
    Emp.EmployeeID,
    Emp.FullName,
    COUNT(DISTINCT Ordf.OrderID) AS TotalOrders,
    SUM(Ordf.TotalRevenue) AS TotalRevenue
FROM 
    {{ ref('employees_stg') }} Emp
LEFT JOIN
    {{ ref('order_facts') }} Ordf
ON
    Emp.EmployeeID = Ordf.EmployeeID
GROUP BY
    Emp.EmployeeID,
    Emp.FullName