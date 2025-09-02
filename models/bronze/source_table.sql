-- Bronze: raw data
select *
from {{ source('my_source', 'source_table') }}

