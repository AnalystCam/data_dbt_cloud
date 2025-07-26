{{config(materialized = 'table')}}

select
    os.CUSTOMERID,
    c.CUSTOMER_NAME,
    sum(os.ORDERID) as ORDERCOUNT,
    sum(os.TOTALAMOUNT) as TOTALREVENUE

from {{ ref("orders_fact") }} os
join {{ ref("customers_stg") }} c on os.customerid = c.customerid
group by os.customerid, c.customer_name
