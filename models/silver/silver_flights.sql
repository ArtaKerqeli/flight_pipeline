SELECT
    id,
    origin,
    destination,
    flight_date,
    delay
FROM {{ ref('bronze_flights') }}
WHERE delay IS NOT NULL

