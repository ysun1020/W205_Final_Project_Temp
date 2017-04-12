

select a16.route, 
round(a16.avgarrdelay,  0),
round(a15.avgarrdelay,  0),
round(a14.avgarrdelay,  0),
round(a13.avgarrdelay,  0),
round(a12.avgarrdelay,  0),
round(a11.avgarrdelay,  0),
round(a10.avgarrdelay,  0),
round(a09.avgarrdelay,  0),
round(a08.avgarrdelay,  0),
round(a07.avgarrdelay,  0)


from (
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2016_year
order by numflights desc
limit 100) a16

inner join  
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2015_year
order by numflights desc
limit 100) a15
on a16.route = a15.route

inner join
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2014_year
order by numflights desc
limit 100) a14
on a15.route = a14.route

inner join
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2013_year
order by numflights desc
limit 100) a13
on a14.route = a13.route

inner join 
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2012_year
order by numflights desc
limit 100) a12
on a13.route = a12.route

inner join 
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2011_year
order by numflights desc
limit 100) a11
on a12.route = a11.route

inner join 
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2010_year
order by numflights desc
limit 100) a10
on a11.route = a10.route

inner join 
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2009_year
order by numflights desc
limit 100) a09
on a10.route = a09.route

inner join 
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2008_year
order by numflights desc
limit 100) a08
on a09.route = a08.route

inner join 
(
select route, numflights, avgdepdelay, avgarrdelay
from flight_by_route_2007_year
order by numflights desc
limit 100) a07
on a08.route = a07.route;






