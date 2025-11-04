SELECT
    ProductID,
    Name as ProductName,
    Category,
    RetailPrice,
    SupplierPrice,
    SupplierID,
    Updated_At
FROM
    {{ source('productslanding', 'products') }}