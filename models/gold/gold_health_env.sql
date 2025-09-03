{{ config(materialized='table') }}

select
    a.airport_id,
    w.weather_condition,
    c.cancer_rate
from {{ ref('silver_airports') }} a
join {{ ref('silver_weather') }} w on a.location = w.location
join {{ ref('silver_cancer') }} c on a.region = c.region

