with orders as (

  select * from {{ ref('stg_orders') }}

),
payments as (

  select * from {{ ref('stg_payments') }}

),
final as (
    select
        customer_id,
        order_id,
        sum(payment_amount) as payment_amount

    from orders

    left join payments using (order_id)

    group by 1,2

)

select * from final
