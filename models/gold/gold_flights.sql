-- Gold layer: analytics-ready
select
    airline,
    count(distinct flight_id) as total_flights,
    avg(arrival_delay) as avg_delay
from {{ ref('silver_flights') }}
group by airline

