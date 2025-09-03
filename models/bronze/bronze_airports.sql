{{ config(materialized='table') }}

select *
from {{ source('airline_source', 'airports') }}


