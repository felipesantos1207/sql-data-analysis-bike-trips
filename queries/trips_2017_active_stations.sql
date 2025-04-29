-- Count total trips and sum of durations for active stations in 2017, considering trips longer than 30 minutes

SELECT
  COUNT(start_time) AS total_trips_2017,
  SUM(duration_minutes) AS total_duration_minutes,
  status
FROM
  `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS a
JOIN
  `bigquery-public-data.austin_bikeshare.bikeshare_stations` AS b
ON
  a.start_station_id = b.station_id
WHERE
  start_time BETWEEN '2017-01-01' AND '2017-12-31'
  AND duration_minutes >= 30
  AND status = 'active'
GROUP BY
  status;
