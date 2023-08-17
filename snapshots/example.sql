{% snapshot shipment_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='public',
      unique_key='id',

      strategy='check',
      check_cols=['class']
     
    )
}}

select * from {{ ref('shipment1') }}

{% endsnapshot %}