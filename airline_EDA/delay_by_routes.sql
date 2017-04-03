DROP TABLE routes_working;

CREATE TABLE routes_working AS
SELECT year, 
       month,
       origin,
       dest, 
       count(*) AS numofflights,
       concat(origin, "_", dest) AS route,
       MIN(depdelayminutes) AS mindepdelay,
       MAX(depdelayminutes) AS maxdepdelay,
       AVG(depdelayminutes) AS avgdepdelay,
       STDDEV_POP(depdelayminutes) AS stdevdepdelay,
       MIN(arrdelayminutes) AS minarrdelay,
       MAX(arrdelayminutes) AS maxarrdelay,
       AVG(arrdelayminutes) AS avgarrdelay,
       STDDEV_POP(arrdelayminutes) AS stdevarrdelay
FROM flights_2016
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest)
;


DROP TABLE routes;
CREATE TABLE routes AS 
SELECT year,
       month, 
       origin,
       dest, 
       route,
       mindepdelay,
       maxdepdelay,
       avgdepdelay,
       stdevdepdelay,
       CASE WHEN avgdepdelay > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN avgdepdelay > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       minarrdelay,
       maxarrdelay,
       avgarrdelay,
       stdevarrdelay,
       CASE WHEN avgarrdelay > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN avgarrdelay > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM routes_working
ORDER BY avgarrdelay DESC
;

DROP TABLE routes_working;       
	         

