
SELECT 
    CUSTOMERID,
    FIRSTNAME,
    LASTNAME,
    EMAIL,
    PHONE,
    ADDRESS,
    CITY,
    COUNTRY,
    CONCAT(FIRSTNAME, ' ', LASTNAME) AS CUSTOMER_NAME

FROM 
    {{ source('landing', 'customers')}}