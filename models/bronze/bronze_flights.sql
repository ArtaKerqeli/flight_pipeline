-- models/bronze/bronze_flights.sql
SELECT *
FROM {{ source('my_source', 'flights') }}

