-- Gold: aggregated analytics
{{ config(materialized='table') }}

select
    date_trunc('month', processed_date) as month,
    sum(amount_cleaned) as total_amount,
    count(distinct id) as customer_count
from {{ ref('cleaned_table') }}
group by 1

