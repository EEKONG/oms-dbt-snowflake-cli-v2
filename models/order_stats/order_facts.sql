SELECT
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.StoreID,
    O.StatusCode,
    O.StatusDescr,
    O.Updated_At,
    COUNT(DISTINCT O.OrderID) AS OrderCount,
    SUM(OI.TotalPrice) AS TotalRevenue
FROM {{ ref('orders_stg') }} O
JOIN
    {{ ref('orderitems_stg') }} OI
ON
    O.OrderID = OI.OrderID
GROUP BY
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    O.EmployeeID,
    O.StoreID,
    O.StatusCode,
    O.StatusDescr,
    O.Updated_At