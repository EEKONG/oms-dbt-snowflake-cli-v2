SELECT
    C.CustomerID,
    C.FullName,
    COUNT(DISTINCT Ordf.OrderID) AS TotalOrders,
    SUM(Ordf.TotalRevenue) AS TotalSpent
FROM
    {{ ref('customer_stg') }} C
JOIN
    {{ ref('order_facts') }} Ordf
USING
    (CustomerID)
GROUP BY
    C.CustomerID,
    C.FullName