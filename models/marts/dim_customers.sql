with
    dim_customers as (
        select 
            {{ dbt_utils.generate_surrogate_key(['string_field_0', 'string_field_1']) }} as sk_customer
            , *
        from {{ref("stg_customers")}}[
    )

select *
from dim_customers