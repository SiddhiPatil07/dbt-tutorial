
-- models/joined_data_model.sql

-- Reference the source tables directly
with
    customer_d as (select * from {{ source('public', 'customer') }}),
    orders_d as (select * from {{ source('public', 'orders') }}),
    payment_d as (select * from {{ source('public', 'payment') }})

-- Join the tables
select
    c.*, 
    o.order_date,
    p.payment_amount
from
    customer_d c
join
    orders_d o
on
    c.customer_id = o.customer_id
left join
    payment_d p
on
    o.order_id = p.order_id





