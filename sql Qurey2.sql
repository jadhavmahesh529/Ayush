--book information -bookname ,author ,published date
--create datbase
create database Book;
-- to create table 
use Book;
create table BookInformatio(bookname varchar (200),author varchar (200),published_date date );
select * from BookInformatio
--insert record--humble life, raviraj,02-12-2013
insert into BookInformatio(bookname,author,published_date) values ('HumbleLife','Mahesh','02-12-2013');
insert into BookInformatio values ('Ayush','parth','02-12-2019');
--delete table 
drop table BookInformatio

select *from BookInformation
create table BookInformatio(bookid int identity(1,1) primary key, bookname varchar (200),author varchar (200),published_date date );
insert into BookInformatio values ('Ayush','mahesh','02-12-2014')

update BookInformatio set bookname = 'Ayush',author='Mahesh'where bookid=1;
delete from BookInformatio where bookid=1
truncate table BookInformatio;
alter table BookInformatio Add purchased_date date
alter table BookInformatio drop column purchased_date
