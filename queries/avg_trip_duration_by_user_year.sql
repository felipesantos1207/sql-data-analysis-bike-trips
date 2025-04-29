-- Average trip duration per subscriber type by year

SELECT
  ROUND(AVG(duration_minutes), 1) AS avg_trip_duration,
  subscriber_type,
  EXTRACT(YEAR FROM start_time) AS trip_year
FROM
  `bigquery-public-data.austin_bikeshare.bikeshare_trips`
GROUP BY
  subscriber_type,
  trip_year
ORDER BY
  trip_year;
