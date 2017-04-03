OP TABLE cancellation_by_route_day;

CREATE TABLE cancellation_by_route_day AS
SELECT year, 
       month,
       flightdate,	
       origin,
       origincityname,
       originstate,
       dest, 
       destcityname,
       deststate,
       concat(origin, "_", dest) AS route,
       CancellationCode
FROM flights_2016
WHERE cancelled = "1.00"
;

DROP TABLE weather_cancellation_by_route_day;

CREATE TABLE weather_cancellation_by_route_day AS
SELECT *
FROM cancellation_by_route_day
WHERE cancellationcode = "B"
ORDER BY flightdate
;
