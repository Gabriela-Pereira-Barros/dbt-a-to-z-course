with
    dim_order_details as (
        select 
            {{ dbt_utils.generate_surrogate_key(['Id']) }} as sk_customer
            , *
        from {{ref("stg_orders_details")}}
    )

select *
from dim_order_details