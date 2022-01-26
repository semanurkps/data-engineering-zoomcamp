-- SQL Scripts for the homework 1
-- describe table to learn about data types and schema
SELECT  
    table_name,  
    column_name,  
    data_type  
 FROM  
    information_schema.columns 
 WHERE  
    table_name = 'yellow_taxi_data';
GO
--3rd question 
select count(*) from yellow_taxi_data where extract(MONTH from tpep_pickup_datetime)='01'
GO
select count(*) from yellow_taxi_data where extract(MONTH from tpep_pickup_datetime)='01'and extract(day from tpep_pickup_datetime)='15'
GO
-- 4th question
select MAX(tip_amount) from yellow_taxi_data 
GO
select tpep_pickup_datetime from yellow_taxi_data where tip_amount=1140.44
GO
-- 5th question
select DOLocationID from yellow_taxi_data where extract(month from tpep_pickup_datetime)='01' and extract(day from tpep_pickup_datetime)='14' and pulocationid=43 
-- 6th question
GO
select MAX(total_amount) from yellow_taxi_data
GO
select a.pulocationid,a.dolocationid, b.zone as puzone, c.zone as dozone  from yellow_taxi_data a join location b on (a.puloctionid=b.id) join location c on (c.id=a.dolocationid) where a.total_amount=2292.4
