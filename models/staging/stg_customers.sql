with
    customers as (
        select 
        string_field_0
        , string_field_1
        , string_field_2
        , string_field_4
        , string_field_5
        , string_field_8
        from {{source('northwind', 'Customer')}}
    )

select *
from customers