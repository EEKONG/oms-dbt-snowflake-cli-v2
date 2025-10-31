SELECT
    EmployeeID,
    FirstName,
    LastName,
    Email,
    JobTitle,
    HireDate,
    ManagerID,
    Address,
    City,
    State,
    ZipCode,
    Updated_At,
    CONCAT(FirstName, ' ', LastName) FullName
FROM
    {{ source('employeelanding', 'employees') }}