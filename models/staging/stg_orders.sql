with
    orders as (
        select *
        from {{source('northwind', '_Order_')}}
    )

select *
from orders