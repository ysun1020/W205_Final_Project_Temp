DROP TABLE weather_delay_by_route_day;

CREATE TABLE weather_delay_by_route_day AS
SELECT year, 
       month,
       flightdate,	
       origin,
       dest, 
       concat(origin, "_", dest) AS route,
       weatherdelay
FROM flights_2016
WHERE weatherdelay is not null and weatherdelay <> 0
ORDER BY weatherdelay
;

