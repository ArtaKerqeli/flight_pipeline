-- Bronze: Raw data (just load from source)
SELECT *
FROM {{ source('my_source', 'source_table') }}
