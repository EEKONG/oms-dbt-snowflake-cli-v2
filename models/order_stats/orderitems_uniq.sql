{{ dbt_utils.deduplicate(
    relation=source('orderlanding', 'orderitems'),
    partition_by='orderid',
    order_by="updated_at",
   )
}}