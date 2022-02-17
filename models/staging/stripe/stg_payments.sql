SELECT
id as payment_id 
, orderid as order_id
, paymentmethod as payment_method
, status
, {{ cents_to_dollars('amount',2) }} as amount
, created as created_at
, _batched_at
FROM {{ source('stripe', 'payment') }}
