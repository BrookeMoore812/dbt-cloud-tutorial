SELECT
SUM(amount)
FROM {{ ref('stg_payments') }}
WHERE status = 'success'