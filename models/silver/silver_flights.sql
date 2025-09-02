-- Silver: Cleaned data
SELECT
    id,
    flight_date,
    origin,
    destination,
    passengers
FROM {{ ref('bronze_flights') }}
WHERE id IS NOT NULL
