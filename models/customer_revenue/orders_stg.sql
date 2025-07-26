
SELECT 
    ORDERID,
    CUSTOMERID,
    STOREID,
    ORDERDATEID,
    CASE 
        WHEN STOREID = 10 THEN 'Online'
    ELSE 'In-store'
    END AS CHANNEL,
    TOTALAMOUNT

FROM
    {{source("landing", 'orders')}}