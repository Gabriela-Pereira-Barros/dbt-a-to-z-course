{{config(enable=False)}}

with
    order_details as (
        select 
        id
        , OrderId
        , ProductId
        , UnitPrice
        , Quantity
        , Discount
        from {{source('northwind', 'OrderDetail')}}
    )

select *
from order_details