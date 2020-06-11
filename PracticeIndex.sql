use classicmodels;

explain select * from customers where customerNumber = 175;

alter table customers add index idx_customerNumber(customerNumber);

explain select * from customers where contactFirstName='Jean' or contactLastName='King';

-- alter table customers add index idx_full_name(contactFirstName,contactLastName);
create index idx_full_name on customers(contactFirstName,contactLastName);

alter table customers drop index idx_full_name;