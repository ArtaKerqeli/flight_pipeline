-- Bronze layer: raw flight data
CREATE OR REPLACE TABLE bronze.flights AS
SELECT * FROM VALUES
  (1, '2025-09-01', 'JFK', 'LAX', 10),
  (2, '2025-09-01', 'SFO', 'ORD', 5),
  (3, '2025-09-02', 'LAX', 'JFK', 15)
AS flights(id, flight_date, origin, destination, delay);

