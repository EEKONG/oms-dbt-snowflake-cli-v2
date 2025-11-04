SELECT
    P.ProductID,
    P.ProductName,
    SUM(OI.Quantity) AS UnitSold,
    SUM(OI.Quantity * OI.UnitPrice) AS TotalRevenue
FROM
    {{ ref('products_stg') }} P
JOIN
    {{ ref('orderitems_stg') }} OI
USING
    (ProductID)
GROUP BY
    P.ProductID,
    P.ProductName

