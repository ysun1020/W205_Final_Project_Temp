drop table if exists busy_dep_airport_2016;
create table busy_dep_airport_2016 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2016
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2015;
create table busy_dep_airport_2015 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2015
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2014;
create table busy_dep_airport_2014 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2014
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2013;
create table busy_dep_airport_2013 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2013
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2012;
create table busy_dep_airport_2012 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2012
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2011;
create table busy_dep_airport_2011 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2011
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2010;
create table busy_dep_airport_2010 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2010
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2009;
create table busy_dep_airport_2009 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2009
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2008;
create table busy_dep_airport_2008 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2008
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2007;
create table busy_dep_airport_2007 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2007
group by OriginAirportID, Origin
order by RS desc
limit 30;


drop table if exists top25airportsdep;
create table top25airportsdep as
select a07.OriginAirportID as ID, a16.Origin as Origin, 
a07.RS as X2007,
a08.RS as X2008,
a09.RS as X2009, 
a10.RS as X2010, 
a11.RS as X2011,
a12.RS as X2012, 
a13.RS as X2013, 
a14.RS as X2014, 
a15.RS as X2015, 
a16.RS as X2016 
from busy_dep_airport_2007 a07
inner join busy_dep_airport_2008 a08
on a07.OriginAirportID = a08.OriginAirportID
inner join busy_dep_airport_2009 a09
on a08.OriginAirportID = a09.OriginAirportID
inner join busy_dep_airport_2010 a10
on a09.OriginAirportID = a10.OriginAirportID
inner join busy_dep_airport_2011 a11
on a10.OriginAirportID = a11.OriginAirportID
inner join busy_dep_airport_2012 a12
on a11.OriginAirportID = a12.OriginAirportID
inner join busy_dep_airport_2013 a13
on a12.OriginAirportID = a13.OriginAirportID
inner join busy_dep_airport_2014 a14
on a13.OriginAirportID = a14.OriginAirportID
inner join busy_dep_airport_2015 a15
on a14.OriginAirportID = a15.OriginAirportID
inner join busy_dep_airport_2016 a16
on a15.OriginAirportID = a16.OriginAirportID
;

