select *
from customers

select *
from orders


select *
from payment

/* Write a query to show the FirstName, LastName, OrderID, and payment amount for all customers who have placed an order and also made a payment.*/


select 
c.customerid,
c.firstname,
c.lastname,
o.orderid,
p.amount
from customers as c
inner join orders as o
on c.customerid = o.customerid
join payment as p
on o.customerid = p.customer_id


/*  Write a query to list all customers with their FirstName, LastName, OrderID, and payment amount. Include customers even if they have no orders or no payments. */

select distinct
c.customerid,
c.firstname,
c.lastname,
o.orderid,
p.amount
from customers as c
left join orders as o
on c.customerid = o.customerid
left join payment as p
on c.customerid = p.customer_id

/*  Write a query to show the CustomerID, OrderID, OrderStatus, and payment mode for orders where the OrderStatus is 'Delivered'. */

select 
c.customerid,
o.orderid,
o.orderstatus,
p.mode 
from orders as o
left join customers as c
on o.customerid = c.customerid
left join payment as p
on c.customerid = p.customer_id
where o.orderstatus = 'delivered'








