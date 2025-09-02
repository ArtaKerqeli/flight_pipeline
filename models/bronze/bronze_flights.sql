-- Bronze layer: raw ingestion
select
    *
from {{ source('my_source', 'flights') }}

