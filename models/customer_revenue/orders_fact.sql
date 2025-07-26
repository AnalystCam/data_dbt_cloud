{{config(materialized = 'table')}}

SELECT 
    O.ORDERID,
    O.CUSTOMERID,
    O.STOREID,
    O.ORDERDATEID,
    O.TOTALAMOUNT,
    OI.PRODUCTID,
    OI.QUANTITY

FROM
    {{ref('orders_stg')}} O

JOIN 
    {{ref('orderitems_stg')}} OI ON O.ORDERID = OI.ORDERID
