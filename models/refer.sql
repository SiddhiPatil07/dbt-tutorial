WITH customer1 AS (
  SELECT * FROM {{ ref('customer1') }}
),

payment1 AS (
  SELECT * FROM {{ ref('payment1') }}
),

orders1 AS (
  SELECT * FROM {{ ref('orders1') }}
)

SELECT
  c1.*,
  p2.payment_amount,
  o1.order_date
FROM
  customer1 c1
LEFT JOIN
  payment1 p2 ON c1.customer_id = p2.customer_id
LEFT JOIN
  orders1 o1 ON c1.customer_id = o1.customer_id
