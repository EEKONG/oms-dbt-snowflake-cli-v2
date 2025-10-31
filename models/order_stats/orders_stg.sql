SELECT
    OrderID,
    OrderDate,
    CustomerID,
    EmployeeID,
    StoreID,
    Status as StatusCode,
    CASE
        WHEN Status = 01 THEN 'In progress'
        WHEN Status = 02 THEN 'Completed'
        WHEN Status = 03 THEN 'Cancelled'
    END AS StatusDescr,
    Updated_At
FROM 
    {{ source('orderlanding', 'orders') }}
Group By
    OrderID,
    OrderDate,
    CustomerID,
    EmployeeID,
    StoreID,
    Status,
    Updated_At