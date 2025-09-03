{{ config(materialized='table') }}

select *
from {{ source('health_source', 'cancer_data') }}

