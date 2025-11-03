SELECT
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_At,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM
    {{ source('customerslanding', 'customers') }}