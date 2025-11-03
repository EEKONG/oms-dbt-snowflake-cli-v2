SELECT
    CustomerID,
    COUNT(DISTINCT OrderID) as OrderCount,
    CASE
        WHEN COUNT(DISTINCT OrderID) > 1 THEN 1
        ELSE 0 
    END AS Is_Repeater
FROM {{ ref('orders_stg') }}
GROUP BY CustomerID 
