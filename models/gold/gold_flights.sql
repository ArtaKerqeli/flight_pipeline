SELECT
    origin,
    destination,
    COUNT(*) AS total_flights,
    AVG(delay) AS avg_delay
FROM {{ ref('silver_flights') }}
GROUP BY origin, destination

