create table Student22 (
  student_id int,
 FirstName varchar(20),
 Money int,
 Primary Key(Student_id)
 );
 Select * from Student22 order  by student_id asc;
 INSERT INTO Student22 values(1,'ranjeet',7000);
Insert into Student22 values(2,'shubham',10000);
 INSERT INTO Student22 values(3,'ranjeet',15000);
Insert into Student22 values(4,'shubham',10000);
 INSERT INTO Student22 values(5,'ranjeet',12000);
Insert into Student22 values(6,'shubham',10000);
select count(Money) from student22;
select * from student22 where student_id=1;
select * from student22 where student_id=5;
select * from student22 where Money=10000 and FirstName='shubham';
select * from student22 where Money=15000 or FirstName='shubham';
select * from student22 where Money=10000 not FirstName='shubham';
ALTER TABLE student22 add marks int;
alter table student22 add address varchar(30);
insert into student22( student_id,marks ,address) values (7,75,'d block');
select * from student22 where marks is null;
select * from student22 where address is  not null;
update student22 set money= 20000 where student_id=1;
delete from  student22 where money=12000;
select money from student22 where rownum < 12000;
select money from student22 where rownum < 12000;
select money from student22 where rownum < 13000;
select min(money) from student22;
select max(money) from student22;
select count(money) from student22;
select avg(money) from student22;
select sum(money) from student22;
select * from student22 where firstname like 'a%';
select * from student22 where firstname like 'r%';
select * from student22 where firstname like '%m';
select * from student22 where firstname like '%a%' ;
select * from student22 where firstname like '%a%' order by student_id asc;
select * from student22 where firstname like '_a%' order by student_id asc;
select * from student22 where firstname like 'ran%' order by student_id asc;
select * from student22 where firstname like 'shu%' order by student_id asc;
Select * from student22 where money in(10000,15000);
select * from student22 where money between 9000 and 12000;
select firstname as fn ,money as m from student22 ;

joins
-----------
create table orders(
order_id int,
customername varchar(40),
ordername varchar(30),
primary key(order_id)
);
select * from orders;
insert into orders(order_id,customername,ordername) values(1,'ranjeet','pizza');
insert into orders(order_id,customername,ordername) values(2,'suchit','samosha');
insert into orders(order_id,customername,ordername) values(3,'sanjeet','dosha');
insert into orders(order_id,customername,ordername) values(4,'vikash','biryani');
alter table orders  add customer_id int;
update orders set customer_id=1 where order_id=1;
update orders set customer_id=3 where order_id=2;
update orders set customer_id=10 where order_id=3;

create table customers(
customer_id int,
customername varchar(30),
contactname varchar(30),
country varchar(30),
countrycode int,
primary key(customer_id)
);
Select * from customers;
select * from orders;
insert into customers values(1,'ranjeet','sanjeet','india',91);
insert into customers values(2,'babita','suchit','india',81);
insert into customers values(3,'bina','sanjeet','india',231);
insert into customers values(4,'suchit','sanjeet','india',9831);


select orders.order_id ,customers.customername , orders.ordername from orders inner join customers on orders.customer_id = customers.customer_id;


select orders.order_id , customers.customername,orders.ordername ,customers.country,customers.countrycode from orders left join customers on 
orders.customer_id=customers.customer_id;

select orders.order_id , customers.customername,orders.ordername ,customers.country,customers.countrycode from orders right join customers on 
orders.customer_id=customers.customer_id;


select orders.order_id , customers.customername,orders.ordername ,customers.country,customers.countrycode from orders full join customers on 
orders.customer_id=customers.customer_id;

-----------------------------------
union
------
select customername  from orders union select customername from customers;

select customername from orders union all select customername from customers ;

------------------------------------------------

select count(countrycode) country from customers group by country;
select count(countrycode) , country from customers group by country;
---------------------------------
Important 
-------------
select max(countrycode) from customers;
select max(countrycode) from customers where countrycode <(select max(countrycode) from customers);
select max(countrycode) from customers where countrycode <(select max(countrycode) from customers where countrycode <(select max(countrycode) from customers ));











---------------------------------------------------------------------------------------------------

create table orders(
order_id int,
customername varchar(40),
ordername varchar(30),
primary key(order_id)
);
select * from orders;
insert into orders(order_id,customername,ordername) values(1,'ranjeet','pizza');
insert into orders(order_id,customername,ordername) values(2,'suchit','samosha');
insert into orders(order_id,customername,ordername) values(3,'sanjeet','dosha');
insert into orders(order_id,customername,ordername) values(4,'vikash','biryani');
alter table orders  add customer_id int;
update orders set customer_id=1 where order_id=1;
update orders set customer_id=3 where order_id=2;
update orders set customer_id=10 where order_id=3;
insert into orders(order_id,customername,ordername) values(5,'vikash','palak paneer');

create table customers(
customer_id int,
customername varchar(30),
contactname varchar(30),
country varchar(30),
countrycode int,
primary key(customer_id)
);
Select * from customers order by customer_id;
select * from orders;
insert into customers values(1,'ranjeet','sanjeet','india',91);
insert into customers values(2,'babita','suchit','india',81);
insert into customers values(3,'bina','sanjeet','india',231);
insert into customers values(4,'suchit','sanjeet','india',9831);
insert into customers values(5,'ranjeet','sanjeet','india',191);
insert into customers values(6,'babita','suchit','india',811);
insert into customers values(7,'bina','sanjeet','india',2314);
insert into customers values(8,'suchit','sanjeet','india',98312);

-- select * from Customers as c1 where 0=(select count(distinct countrycode) from Customers as c2 where c2.countrycode > c1.countrycode);
select max(countrycode) from customers;
select max(countrycode) from customers where countrycode <(select max(countrycode) from customers);
select max(countrycode) from customers where countrycode <(select max(countrycode) from customers where countrycode <(select max(countrycode) from customers ));

select * from customers where rownum <= 2;
select counrycode from customers order by countrycode desc rownum 2-1,1;