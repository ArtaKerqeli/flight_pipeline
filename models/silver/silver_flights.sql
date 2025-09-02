-- Silver layer: cleaned & deduplicated
with bronze as (
    select * from {{ ref('bronze_flights') }}
)
select
    flight_id,
    airline,
    origin,
    destination,
    departure_time,
    arrival_time
from bronze
where flight_id is not null

