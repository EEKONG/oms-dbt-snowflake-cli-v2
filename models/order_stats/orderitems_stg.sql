SELECT
    OrderID,
    OrderitemID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice as TotalPrice,
    Updated_At,
FROM
    {{ source('orderlanding', 'orderitems') }}
