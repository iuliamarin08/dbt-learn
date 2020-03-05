select 
    "ID" as payment_id, -- primary key
    "orderID" as order_id,
    "paymentMethod" as payment_method,
    "AMOUNT" as payment_amount,
    "CREATED" as payment_date

from raw.stripe.payment
