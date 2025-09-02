-- Gold: Aggregated / business-ready data
SELECT
    origin,
    destination,
    COUNT(*) AS total_flights,
    SUM(passengers) AS total_passengers
FROM {{ ref('silver_flights') }}
GROUP BY origin, destination
