create database Shopping;
create table customers(customerid int identity (1,1) primary key,custname varchar(200),custaddress varchar(200),phonenumber bigint, email varchar(200));
create table product(productid int identity(1,1) primary key, productname varchar(200), price int );
create table orders(orderid int identity(1,1) primary key, customername varchar(200), product varchar(200));
insert into customers values('ram','pune',2541515,'ram@gamil.com')
('rahul', 'xyz', 4464646,'yhghg'),
('shyam','abc',455252,'dfdf')
select * from customers;
select * from product;
insert into product values('shoes',400),('T-shirt',600),('watch',400);
select * from orders;
insert into orders values('raj','watch')

drop table orders;
create table orders(
orderid int identity(1,1) primary key,
customerid int,
productid int,
foreign key (customerid)
references customers (customerid),
foreign key (productid)
references product (productid)
);
insert into orders values(1,1)
select a.,b.,c.* from orders a inner join customers b on a.customerid=b.customerid inner join product c on a.productid=c.productid;
delete from orders where orderid=3;
select a.customerid, b.customerid,b.custname,c.productid,c.productname from orders a inner join customers b on a.customerid=b.customerid inner join product c on a.productid=c.productid;

select customers.custname,customers.custaddress,product.productname from customers inner join orders on customers.customerid=orders.orderid
inner join product on product.productid=orders.orderid

