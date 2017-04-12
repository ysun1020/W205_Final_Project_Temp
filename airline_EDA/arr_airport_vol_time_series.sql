create table busy_arr_airport_2016 as
select DestAirportID, Dest, count(*) as RS 
from flights_2016
group by DestAirportID, Dest
order by RS desc
limit 30;

create table busy_arr_airport_2015 as
select DestAirportID, Dest, count(*) as RS 
from flights_2015
group by DestAirportID, Dest
order by RS desc
limit 30;

create table busy_arr_airport_2014 as
select DestAirportID, Dest, count(*) as RS 
from flights_2014
group by DestAirportID, Dest
order by RS desc
limit 30;

create table busy_arr_airport_2013 as
select DestAirportID, Dest, count(*) as RS 
from flights_2013
group by DestAirportID, Dest
order by RS desc
limit 30;

create table busy_arr_airport_2012 as
select DestAirportID, Dest, count(*) as RS 
from flights_2012
group by DestAirportID, Dest
order by RS desc
limit 30;


create table busy_arr_airport_2011 as
select DestAirportID, Dest, count(*) as RS 
from flights_2011
group by DestAirportID, Dest
order by RS desc
limit 30;


create table busy_arr_airport_2010 as
select DestAirportID, Dest, count(*) as RS 
from flights_2010
group by DestAirportID, Dest
order by RS desc
limit 30;

create table busy_arr_airport_2009 as
select DestAirportID, Dest, count(*) as RS 
from flights_2009
group by DestAirportID, Dest
order by RS desc
limit 30;


create table busy_arr_airport_2008 as
select DestAirportID, Dest, count(*) as RS 
from flights_2008
group by DestAirportID, Dest
order by RS desc
limit 30;

create table busy_arr_airport_2007 as
select DestAirportID, Dest, count(*) as RS 
from flights_2007
group by DestAirportID, Dest
order by RS desc
limit 30;

select a07.DestAirportID, a16.Dest, a07.RS, a08.RS, a09.RS, a10.RS, a11.RS, a12.RS, a13.RS, a14.RS, a15.RS, a16.RS 
from busy_arr_airport_2007 a07
inner join busy_arr_airport_2008 a08
on a07.DestAirportID = a08.DestAirportID
inner join busy_arr_airport_2009 a09
on a08.DestAirportID = a09.DestAirportID
inner join busy_arr_airport_2010 a10
on a09.DestAirportID = a10.DestAirportID
inner join busy_arr_airport_2011 a11
on a10.DestAirportID = a11.DestAirportID
inner join busy_arr_airport_2012 a12
on a11.DestAirportID = a12.DestAirportID
inner join busy_arr_airport_2013 a13
on a12.DestAirportID = a13.DestAirportID
inner join busy_arr_airport_2014 a14
on a13.DestAirportID = a14.DestAirportID
inner join busy_arr_airport_2015 a15
on a14.DestAirportID = a15.DestAirportID
inner join busy_arr_airport_2016 a16
on a15.DestAirportID = a16.DestAirportID;


