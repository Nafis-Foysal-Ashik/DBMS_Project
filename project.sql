create table owner (
ownerid int primary key,
firstname varchar(50),
lastname varchar(50),
contactnumber varchar(15),
email varchar(100)
);

describe owner;

insert into owner (ownerid, firstname, lastname, contactnumber, email) values (1, 'Nafis', 'Rahman', '1234567890', 'nafis@example.com');

insert into owner (ownerid, firstname, lastname, contactnumber, email) values (2, 'Foysal', 'Mahmud', '0987654321', 'foysal@example.com');

insert into owner (ownerid, firstname, lastname, contactnumber, email) values (3, 'Ashik', 'Rahman', '1357924680', 'ashik@example.com');

insert into owner (ownerid, firstname, lastname, contactnumber, email) values (4, 'Nasim', 'Mahmud', '9876543210', 'nasim@example.com');

insert into owner (ownerid, firstname, lastname, contactnumber, email) values (5, 'Akash', 'Rahman', '2468013579', 'akash@example.com');

select * from owner;

create table vehicle (
vehicleid int primary key,
model varchar(50),
make varchar(50),
year int,
registrationnumber varchar(15),
ownerid int,
insuranceid int,
foreign key (ownerid) references owner(ownerid)
);

insert into vehicle (vehicleid, model, make, year, registrationnumber, ownerid, insuranceid) values (1, 'Toyota Camry', 'Toyota', 2020, 'ABC123', 1, 1);

insert into vehicle (vehicleid, model, make, year, registrationnumber, ownerid, insuranceid) values (2, 'Honda Civic', 'Honda', 2018, 'DEF456', 2, 2);

insert into vehicle (vehicleid, model, make, year, registrationnumber, ownerid, insuranceid) values (3, 'Ford Mustang', 'Ford', 2019, 'GHI789', 3, 3);

insert into vehicle (vehicleid, model, make, year, registrationnumber, ownerid, insuranceid) values (4, 'Chevrolet Silverado', 'Chevrolet', 2021, 'JKL012', 4, 4);

insert into vehicle (vehicleid, model, make, year, registrationnumber, ownerid, insuranceid) values (5, 'BMW X5', 'BMW', 2022, 'MNO345', 5, 5);

describe vehicle;

select * from vehicle;

create table maintenance (
maintenanceid int primary key,
vehicleid int,
maintenancedate date,
description varchar(50),
cost decimal(10, 2),
foreign key (vehicleid) references vehicle(vehicleid)
);

insert into maintenance (maintenanceid, vehicleid, maintenancedate, description, cost) values (1, 1, to_date('02-01-2024', 'DD-MM-YYYY'), 'Oil Change', 50.00);

insert into maintenance (maintenanceid, vehicleid, maintenancedate, description, cost) values (2, 2, to_date('20-02-2024' , 'DD-MM-YYYY'), 'Brake Replacement', 120.00);

insert into maintenance (maintenanceid, vehicleid, maintenancedate, description, cost) values (3, 3, to_date('10-01-2024' , 'DD-MM-YYYY'), 'Tire Rotation', 30.00);

insert into maintenance (maintenanceid, vehicleid, maintenancedate, description, cost) values (4, 4, to_date('05-03-2024' , 'DD-MM-YYYY'), 'Engine Tune-up', 200.00);

insert into maintenance (maintenanceid, vehicleid, maintenancedate, description, cost) values (5, 5, to_date('01-04-2024' ,'DD-MM-YYYY'), 'Spark Plug Replacement', 40.00);

describe maintenance;

select * from maintenance;

select * from maintenance;

create table insurance (
insuranceid int primary key,
insuranceprovider varchar(50),
policynumber varchar(20),
expirydate date,
vehicleid int,
foreign key (vehicleid) references vehicle(vehicleid)
);

insert into insurance (insuranceid, insuranceprovider, policynumber, expirydate, vehicleid) values (1, 'ABC Insurance Company', 'POL123', to_date('15-03-2025','DD-MM-YYYY'), 1);

insert into insurance (insuranceid, insuranceprovider, policynumber, expirydate, vehicleid) values (2, 'XYZ Insurance Company', 'POL456', to_date('31-12-2024','DD-MM-YYYY'), 2);

insert into insurance (insuranceid, insuranceprovider, policynumber, expirydate, vehicleid) values (3, 'DEF Insurance Company', 'POL789', to_date('20-06-2025','DD-MM-YYYY'), 3);

insert into insurance (insuranceid, insuranceprovider, policynumber, expirydate, vehicleid) values (4, 'GHI Insurance Company', 'POL012', to_date('10-08-2024','DD-MM-YYYY'), 4);

insert into insurance (insuranceid, insuranceprovider, policynumber, expirydate, vehicleid) values (5, 'JKL Insurance Company', 'POL345', to_date('25-09-2025','DD-MM-YYYY'), 5);

describe insurance;

select * from insurance;

create table fuellog (
fuellogid int primary key,
fueldate date,
fueltype varchar(20),
volume decimal(8, 2),
totalcost decimal(10, 2),
maintenanceid int,
foreign key (maintenanceid) references maintenance(maintenanceid)
);

insert into fuellog (fuellogid, fueldate, fueltype, volume, totalcost, maintenanceid) values  (1, to_date('15-03-2024', 'DD-MM-YYYY'), 'Petrol', 50.0, 100.0, 1);

insert into fuellog (fuellogid, fueldate, fueltype, volume, totalcost, maintenanceid) values  (2, to_date('20-02-2024', 'DD-MM-YYYY'), 'Diesel', 40.0, 80.0, 2);

insert into fuellog (fuellogid, fueldate, fueltype, volume, totalcost, maintenanceid) values  (3, to_date('10-01-2024', 'DD-MM-YYYY'), 'Gasoline', 35.0, 70.0, 3);

insert into fuellog (fuellogid, fueldate, fueltype, volume, totalcost, maintenanceid) values  (4, to_date('05-03-2024', 'DD-MM-YYYY'), 'Electric', 0.0, 0.0, 4);

insert into fuellog (fuellogid, fueldate, fueltype, volume, totalcost, maintenanceid) values  (5, to_date('01-04-2024', 'DD-MM-YYYY'), 'Petrol', 45.0, 90.0, 5);

describe fuellog;

select * from fuellog;

grant all privileges to system;

revoke all privileges from system;


-- insert a new coulumn into an existing table

alter table owner add address varchar(20);

select * from owner;

--Modify column definition in the table

alter table owner modify address int;

select * from owner;

--Rename the column name

alter table owner rename column address to thikana;

select * from owner;

--Drop the column from table

alter table owner drop column thikana;

select * from owner;

-- Displaying table data using SELECT command

select * from maintenance;

select * from maintenance where cost>50;

--Updating the data in a table

select * from owner;

update owner set lastname='Mahmud' where ownerid=1;

select * from owner;

--Deleting row from a table

insert into owner values(6 , 'Sakib' , 'Hasan' , '232435683' , 'sakib@gmail.com');

select * from owner;

delete from owner where firstname='Sakib';

select * from owner;

--union operation
SELECT ownerid, firstname, lastname, contactnumber, email
FROM owner
WHERE ownerid < 100  -- Example WHERE clause for the owner table

UNION

SELECT vehicleid AS ownerid, model AS firstname, make AS lastname, NULL AS contactnumber, NULL AS email
FROM vehicle
WHERE year > 2010;  -- Example WHERE clause for the vehicle table


--intersect operation

SELECT ownerid, firstname, lastname, contactnumber, email
FROM owner
WHERE ownerid < 100

INTERSECT

SELECT ownerid, model AS firstname, make AS lastname, NULL AS contactnumber, NULL AS email
FROM vehicle;

--with clause

select * from maintenance;

with max_cost(taka) as (select max(cost) from maintenance)
select * from maintenance,max_cost where maintenance.cost=max_cost.taka;

--Aggregate function

select * from owner;
select * from vehicle;
select * from maintenance;
select * from insurance;
select * from fuellog;

select count(*) from owner where lastname='Mahmud';

select count(*) from vehicle where ownerid=insuranceid;

select count(*) from maintenance where cost>=50;

select count(*) from fuellog where volume>40;

select count(*) from insurance;


select count(distinct lastname) as name from owner;


select avg(cost) as amount from maintenance;

select sum(volume) as total_volume from fuellog;

select max(totalcost) as maximum from fuellog;

select min(totalcost) as minumum from fuellog;

--Group by and Having

select * from fuellog;

select fueltype , sum(volume) , avg(totalcost) from fuellog group by fueltype;

--Nested subquery

select * from owner; 
select * from vehicle;
select * from maintenance;
select * from fuellog;

select firstname,email from owner where ownerid=(
  select ownerid from vehicle where vehicleid =( 
    select vehicleid from maintenance where maintenanceid=(
        select maintenanceid from fuellog where volume=0))); 
        
        

--String operations

select * from vehicle;

select * from vehicle where make like '%a';

select * from vehicle where make like '___'  or make like '______';

select * from fuellog;

select * from fuellog where fueltype like '______';

select * from owner where firstname like 'n%';

select * from owner where email like '%@%';

--Views

select * from insurance;

create view insurance_information as select insuranceprovider,expirydate from insurance;

select * from insurance_information;

--join

select * from owner natural join vehicle; --natral join

select * from maintenance left join fuellog on maintenance.maintenanceid = fuellog.maintenanceid; --left join

select * from vehicle right join insurance on vehicle.vehicleid = insurance.vehicleid; --right join


--PL/SQL


--pl/sql variable declaration and print values

set serveroutput on

DECLARE
  v_id FUELLOG.FUELLOGID%TYPE;
  v_date FUELLOG.FUELDATE%TYPE;
BEGIN
  select fuellogid, fueldate into v_id, v_date from FUELLOG where volume = 50;
  DBMS_OUTPUT.PUT_LINE('Fuel_Log_Id: ' || v_id || ', Fuel_Date: ' || v_date);
END;
/


--problem
set serveroutput on

declare 
  i_pro INSURANCE.INSURANCEPROVIDER%TYPE;
  policy INSURANCE.POLICYNUMBER%TYPE;
BEGIN
  select insuranceprovider, policynumber 
  into i_pro, policy 
  from insurance 
  where vehicleid = 3;

  if i_pro is not null and policy is not null then
    DBMS_OUTPUT.PUT_LINE('Insurance Provider Name: ' || i_pro || ', Policy Number: ' || policy);
  else
    DBMS_OUTPUT.PUT_LINE('No insurance information found for vehicleid = 3');
  end if;
end;
/

--insert and set default values

declare 
m_id MAINTENANCE.MAINTENANCEID%type:=6;
v_id MAINTENANCE.VEHICLEID%type:=5;
m_date MAINTENANCE.MAINTENANCEDATE%type:=to_date('01-04-2024' ,'DD-MM-YYYY');
m_des MAINTENANCE.DESCRIPTION%type:='Break Fail';
m_cost MAINTENANCE.COST%type:=100;

begin
insert into MAINTENANCE values(m_id,v_id,m_date,m_des,m_cost);
end;
/


declare 
f_id FUELLOG.FUELLOGID%type:=6;
f_date FUELLOG.FUELDATE%type:=to_date('14-12-2023','DD-MM-YYYY');
f_type FUELLOG.FUELTYPE%type:='Kerosine';
f_vol FUELLOG.VOLUME%type:=90;
f_taka FUELLOG.TOTALCOST%type:=120;
m_id FUELLOG.MAINTENANCEID%type:=4;

begin
insert into fuellog values (f_id,f_date,f_type,f_vol,f_taka,m_id);
end;
/

--rowtype

declare 
own_row owner%rowtype;
begin
select ownerid,firstname,lastname,contactnumber,email 
into  own_row.ownerid,own_row.firstname,own_row.lastname,own_row.contactnumber,own_row.email from owner where ownerid=4;
end;
/

declare 
faltu VEHICLE%rowtype;
begin
select vehicleid,model,make,year,registrationnumber,ownerid,insuranceid 
into
faltu.vehicleid,faltu.model,faltu.make,faltu.year,faltu.registrationnumber,faltu.ownerid,faltu.insuranceid from vehicle where vehicleid=2;
end;
/

declare 
  faltu vehicle%rowtype;
begin
  select *
  into faltu
  from vehicle
  where vehicleid = 2;
end;
/




--curesor and row count
set serveroutput on
declare
cursor owner_cursor is select * from owner;
owner_row owner%rowtype;
begin 
open owner_cursor;
fetch owner_cursor into owner_row.ownerid,owner_row.firstname,owner_row.lastname,owner_row.contactnumber,owner_row.email;
while owner_cursor%found loop
dbms_output.put_line('Owner Id : '||owner_row.ownerid||'First Name : '||owner_row.firstname||'Last Name :'||owner_row.lastname||'Contact Number : '||owner_row.contactnumber||'E-mail : '||owner_row.email);
dbms_output.put_line('Row Count : '||owner_cursor%rowcount);
fetch owner_cursor into owner_row.ownerid,owner_row.firstname,owner_row.lastname,owner_row.contactnumber,owner_row.email;
end loop;
close owner_cursor;
end;
/


--Example %ISOPEN Explicit Cursor Attribute
set serveroutput on
declare 
v_model VEHICLE.MODEL%type;
v_year VEHICLE.YEAR%type;
cursor c1 is
select model,year from VEHICLE;

begin
if not c1%isopen then
open c1;
end if;

loop
fetch c1 into v_model,v_year;
exit when c1%notfound;
dbms_output.put_line('Car name : '||v_model||' Year : '||v_year);
end loop;

if c1%isopen then
close c1;
end if;
end;

select * from owner;
select * from vehicle;
select * from insurance;
select * from fuellog;
select * from maintenance;

--%found explicit coursor

declare
cursor c1 is 
select description , cost from maintenance;

m_des MAINTENANCE.DESCRIPTION%type;
m_cost MAINTENANCE.COST%type;

begin
open c1;
loop 
fetch c1 into m_des,m_cost;

if c1%found then
dbms_output.put_line('Description : '||m_des||' Cost : '||m_cost);
else
exit;
end if;

end loop;

close c1;

end;

--%not found explicit cursor

declare
cursor c1 is
select fueltype , volume from fuellog;

f_type FUELLOG.FUELTYPE%type;
f_vol FUELLOG.VOLUME%type;

begin

open c1;

loop
fetch c1 into f_type,f_vol ;
if c1%notfound then
exit;
else
dbms_output.put_line('Fuel Name : '||f_type||' Volume : '||f_vol);
end if;
end loop;

end;

--implicit cursor
set serveroutput on
declare
begin
insert into owner values(6,'Fahim','Mollick','015343432','fahim@gmil.com');
if(sql%found) then
dbms_output.put_line('Done');
else
dbms_output.put_line('Error');
end if;
end;


--update
set serveroutput on
declare
begin
delete from owner where ownerid=6;
if(sql%found) then
dbms_output.put_line('Deleted Successfully');
else
dbms_output.put_line('Could find the data');
end if;
end;

select * from owner;

--update
set serveroutput on
declare
begin
update insurance set policynumber='POL159' where vehicleid=3;
if(sql%found) then
dbms_output.put_line('Updated Successfully');
else
dbms_output.put_line('Update Failed');
end if;
end;

--explicit courser
set serveroutput on
declare 
v_name OWNER.FIRSTNAME%type;
v_mail OWNER.EMAIL%type;

cursor c1 is
select firstname,email from owner;

begin
open c1;
loop
fetch c1 into v_name,v_mail ;
exit when c1%notfound;
dbms_output.put_line(c1%rowcount || ' Name : '||v_name||' E-Mail : '|| v_mail);
end loop;
close c1;
end;

select * from insurance;

declare 
v_insu insurance%rowtype;

cursor c1 is
select * from insurance;

begin
open c1;
loop
fetch c1 into v_insu;
exit when c1%notfound;
dbms_output.put_line(c1%rowcount||'->'||v_insu.insuranceprovider);
end loop;
end;

--cursor for loop

select * from fuellog;
set serveroutput on
declare 

cursor c1 is
select * from fuellog;

begin
for i in c1
loop
dbms_output.put_line(c1%rowcount||'-->'||i.FUELDATE||'-->'||i.TOTALCOST||' --> '||i.FUELTYPE);
end loop;
end;


select * from vehicle ;
insert into vehicle values(9,'Audi','Audi','2030','AXY234',2,2);

insert into vehicle values(7,'Marcedis','Marchedis','2030','MXY234',2,2);
insert into vehicle values(8,'Benz','Benz','2030','AXY234',2,2);

--sql%found implicit cursor attribute
set serveroutput on
declare
v_year int :=2030;

begin
delete from vehicle where year=v_year;

if(sql%found) then
dbms_output.put_line('All rows are deleted that has year : '||v_year);
else
dbms_output.put_line('No row deleted');

end if;
end;



--procedure

create or replace procedure caltotalcost
as
total_cost decimal(10,3);
begin
select sum(totalcost) into total_cost from fuellog;
dbms_output.put_line('Total Cost of Fuel : '||total_cost);
end;
/

set serveroutput on;
exec caltotalcost;

select * from maintenance;

create or replace procedure avg_cost
as
avgcost decimal(10,2);
begin
select avg(cost) into avgcost from maintenance;
dbms_output.put_line('The average cost of maintenance is : '||avgcost);
end;
/

set serveroutput on;
exec avg_cost;

select * from vehicle;
-- problem
create or replace procedure v_type
as
old_car int;
car_model varchar(30);

begin
select min(year)  , model into old_car,car_model from vehicle group by model;
dbms_output.put_line('The oldest car avaiable in the garage is '||car_model);
end;
/

set serveroutput on;
exec v_type;


select * from owner;

create or replace procedure show
as

owner_name varchar(20);

begin
for i in (select firstname from owner) 
loop
dbms_output.put_line('Name : '||i.firstname);
end loop;
end;
/


--trigger

select * from owner;

grant all privileges to system;

create table t_virtual(
v_id int,
fname varchar(20),
lname varchar(30),
contact varchar(30),
mail varchar(30));

create or replace trigger t_faltu
after insert on owner 
for each row
begin
insert into t_virtual values(:new.ownerid,:new.firstname,:new.lastname,:new.contactnumber,:new.email);
end;

select * from t_virtual;

insert into owner values(8,'Munna','Rahman','043473783543','munna@gmail.com');

create or replace trigger u_faltu
before update on owner
for each row
begin 
insert into t_virtual values(:old.ownerid,:old.firstname,:old.lastname,:old.contactnumber,:old.email);
end;

update owner set firstname='sakib' where ownerid=7;

--function

select * from fuellog;

create or replace function sum_fun return number as

v_1 FUELLOG.VOLUME%type;
v_2 fuellog.volume%type;
v_sum FUELLOG.VOLUME%type;

begin
select volume into v_1 from fuellog where fuellogid=1;
select volume into v_2 from fuellog where fuellogid=2;
select v_1+v_2 into v_sum from dual;
dbms_output.put_line('Total Amount of Volume is : '||v_sum);
return v_sum;
end;

set serveroutput on;
select sum_fun from dual;

select * from maintenance;

create or replace function final_cost return number as

total_cost maintenance.cost%type;

begin
select sum(cost) into total_cost from MAINTENANCE;
dbms_output.put_line('Total cost : '||total_cost);
return total_cost;
end;
/

set serveroutput on;
select final_cost from dual;

select * from owner;




