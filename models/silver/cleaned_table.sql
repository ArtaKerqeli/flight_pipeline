-- Silver: cleaned and standardized
{{ config(materialized='table') }}

with bronze as (
    select * from {{ ref('source_table') }}
)

select
    id,
    trim(lower(name)) as name_cleaned,
    cast(amount as decimal(10,2)) as amount_cleaned,
    current_date() as processed_date
from bronze
where id is not null

