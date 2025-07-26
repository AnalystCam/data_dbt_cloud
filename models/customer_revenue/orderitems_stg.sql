SELECT
    ORDERITEMID,
    ORDERID,
    PRODUCTID,
    QUANTITY,
    UNITPRICE

FROM 
    {{ source("landing", 'orderitems')}}
    