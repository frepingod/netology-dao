create schema netology;

use netology;

create table CUSTOMERS
(
    id           int primary key auto_increment,
    name         varchar(255)        not null,
    surname      varchar(255)        not null,
    age          int check (age > 0) not null,
    phone_number varchar(16) default 'номер не указан'
);

create table ORDERS
(
    id           int primary key auto_increment,
    date         timestamp not null default now(),
    customer_id  int          not null,
    product_name varchar(255) not null,
    amount       int          not null,
    foreign key (customer_id) references CUSTOMERS (id) on delete cascade
);

insert into CUSTOMERS(id, name, surname, age, phone_number)
values (1, 'Ivan', 'Ivanov', 25, '8(800)555-35-35');
insert into CUSTOMERS(id, name, surname, age)
values (2, 'Petr', 'Petrov', 84);
insert into CUSTOMERS(id, name, surname, age, phone_number)
values (3, 'Boris', 'Boris', 3, '123456789');
insert into CUSTOMERS(id, name, surname, age)
values (4, 'Olga', 'Sidorova', 71);

insert into ORDERS(id, customer_id, product_name, amount)
values (1, 1, 'phone', 1);
insert into ORDERS(id, customer_id, product_name, amount)
values (2, 2, 'cup', 10);
insert into ORDERS(id, customer_id, product_name, amount)
values (3, 3, 'flower', 3);
insert into ORDERS(id, customer_id, product_name, amount)
values (4, 4, 'steak', 50);
insert into ORDERS(id, customer_id, product_name, amount)
values (5, 4, 'steak2', 150);