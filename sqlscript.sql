REM   Script: Final Deliverable
REM   Final Deliverable 

Create table Seller ( 
    Seller_id Decimal(10) not null, 
    Seller_first_name varchar(100) not null, 
    Seller_last_name varchar(100), 
    Product_id decimal(10), 
    primary key (Seller_id) 
);

Create table Product_category ( 
    product_category_id Decimal(10) not null, 
    product_type varchar(100) not null, 
    primary key (product_category_id) 
);

Create table Product ( 
    product_id Decimal(10) not null, 
    product_category_id Decimal(10) not null, 
    product_name varchar(100) not null, 
    primary key (product_id) 
    foreign key (product_category_id) references Product_category 
);

Create table Product ( 
    product_id Decimal(10) not null, 
    product_category_id Decimal(10) not null, 
    product_name varchar(100) not null, 
    primary key (product_id), 
    foreign key (product_category_id) references Product_category 
);

Create table list ( 
    list_id Decimal(10) not null, 
    Seller_id Decimal(10) not null, 
    product_id Decimal(10) not null, 
    primary key (list_id), 
    foreign key (Seller_id) references Seller, 
    foreign key (product_id) references Product 
);

ALTER TABLE Seller 
ADD FOREIGN KEY (Product_id) REFERENCES Product(product_id);

Alter table Product 
add description varchar (256);

Alter table Product 
add price decimal (10);

insert into Seller values (001, 'Kriti','Smith');

insert into Seller values (002, 'Aahan','Khan');

insert into Product_category values (0001, 'Electonics');

insert into Product_category values (0001, 'Fashion');

insert into Product_category values (0001, 'Books');

insert into Product_category values (0001, 'Electonics');

insert into Seller (Seller_id, Seller_first_name, Seller_last_name) 
values (001, 'Kriti','Smith');

insert into Seller (Seller_id, Seller_first_name, Seller_last_name) 
values (002, 'Aahan','Khan');

insert into Product_category values (0001, 'Electonics');

insert into Product_category values (0002, 'Fashion');

insert into Product_category values (0003, 'Books');

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
is begin  
insert into products ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg) 
end;
/

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
is begin  
insert into product ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg) 
end;
/

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
begin  
insert into product ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg) 
end;
/

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
is  
begin  
insert into product ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg); 
end;
/

begin  
Add_product(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
end; 
/

begin  
Add_product(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
end; 
/

begin  
Add_product(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
end; 
/

BEGIN  
ADD_PRODUCT(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
END; 
/

BEGIN  
ADD_PRODUCT(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 999, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 999, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 559, 0002); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 559, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 559, 0001); 
END; 
/

INSERT INTO Product values (103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001 );

INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001 );

INSERT INTO Product values (103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001 );

INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0002 );

INSERT INTO Product values (103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0003 );

INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0004 );

Begin 
ADD_PRODUCT(103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001); 
END; 
 
Begin 
INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001); 
end; 
/

Begin 
ADD_PRODUCT(103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001); 
END; 
/

Begin 
INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001); 
end; 
/

select * from product;

Begin 
ADD_PRODUCT(103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001); 
END; 
/

Begin 
ADD_PRODUCT(104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001); 
end; 
/

Begin 
ADD_PRODUCT(103,'Charger', 'Fastest charger in the market.', 25, 0001); 
END; 
/

Begin 
ADD_PRODUCT(104,'Powerbank', 'Powerbank that charges all the devices.', 30, 0001); 
end; 
/

delete from product where price = 1010;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

select * from product;

Begin 
ADD_PRODUCT(103,'Charger', 'Fastest charger in the market.', 25, 0001); 
END; 
/

Begin 
ADD_PRODUCT(104,'Powerbank', 'Powerbank that charges all the devices.', 30, 0001); 
end; 
/

Select product_id, product_name, price, product_category_id, product_type from product 
inner join product_category on product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category_id, product_type from Product as p 
inner join product_category as pc on p.product_category_id = pc.product_category_id 
where (pc.product_type = 'Computers' or pc.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30 
 
select * from product;

select * from product;

Select product_id, product_name, price, product_category.product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30 
;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30 
 
select * from product;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
 
where price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

select * from product;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

create table order ( 
    order_id decimal (10) primary key, 
    product_id decimal (10), 
    Quantity decimal (10),  
    consumer_id decimal (10), 
    foreign key (consumer_id) references consumer, 
    foreign key (product_id) references product 
);

create table orders ( 
    order_id decimal (10) primary key, 
    product_id decimal (10), 
    Quantity decimal (10),  
    consumer_id decimal (10), 
    foreign key (consumer_id) references consumer, 
    foreign key (product_id) references product 
);

create table orders ( 
    order_id decimal (10) primary key, 
    product_id decimal (10), 
    Quantity decimal (10),  
    consumer_id decimal (10), 
    foreign key (consumer_id) references consumer, 
    foreign key (product_id) references Product 
);

create table orders ( 
    order_id decimal (10) primary key, 
    product_id decimal (10), 
    Quantity decimal (10),  
    consumer_id decimal (10), 
    foreign key (consumer_id) references consumers, 
    foreign key (product_id) references Product 
);

create table orders ( 
    order_id decimal (10) primary key, 
    product_id decimal (10), 
    Quantity decimal (10),  
    consumer_id decimal (10), 
    foreign key (consumer_id) references consumer, 
    foreign key (product_id) references Product 
);

create table orders ( 
    order_id decimal (10) primary key, 
    product_id decimal (10), 
    Quantity decimal (10),  
    consumer_id decimal (10), 
    foreign key (consumer_id) references consumer, 
    foreign key (product_id) references Product 
);

select * from product;

select * from consumer;

Create table Seller ( 
    Seller_id Decimal(10) not null, 
    Seller_first_name varchar(100) not null, 
    Seller_last_name varchar(100), 
    Product_id decimal(10), 
    primary key (Seller_id) 
);

Create table Product_category ( 
    product_category_id Decimal(10) not null, 
    product_type varchar(100) not null, 
    primary key (product_category_id) 
);

Create table Product ( 
    product_id Decimal(10) not null, 
    product_category_id Decimal(10) not null, 
    product_name varchar(100) not null, 
    primary key (product_id) 
    foreign key (product_category_id) references Product_category 
);

Create table Product ( 
    product_id Decimal(10) not null, 
    product_category_id Decimal(10) not null, 
    product_name varchar(100) not null, 
    primary key (product_id), 
    foreign key (product_category_id) references Product_category 
);

Create table list ( 
    list_id Decimal(10) not null, 
    Seller_id Decimal(10) not null, 
    product_id Decimal(10) not null, 
    primary key (list_id), 
    foreign key (Seller_id) references Seller, 
    foreign key (product_id) references Product 
);

ALTER TABLE Seller 
ADD FOREIGN KEY (Product_id) REFERENCES Product(product_id);

Alter table Product 
add description varchar (256);

Alter table Product 
add price decimal (10);

insert into Seller values (001, 'Kriti','Smith');

insert into Seller values (002, 'Aahan','Khan');

insert into Product_category values (0001, 'Electonics');

insert into Product_category values (0001, 'Fashion');

insert into Product_category values (0001, 'Books');

insert into Product_category values (0001, 'Electonics');

insert into Seller (Seller_id, Seller_first_name, Seller_last_name) 
values (001, 'Kriti','Smith');

insert into Seller (Seller_id, Seller_first_name, Seller_last_name) 
values (002, 'Aahan','Khan');

insert into Product_category values (0001, 'Electonics');

insert into Product_category values (0002, 'Fashion');

insert into Product_category values (0003, 'Books');

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
is begin  
insert into products ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg) 
end;
/

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
is begin  
insert into product ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg) 
end;
/

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
begin  
insert into product ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg) 
end;
/

Create or replace procedure Add_product( 
    product_id_arg in decimal, 
    product_name_arg in varchar, 
    product_description_arg in varchar, 
    price_arg in decimal, 
    product_category_arg in decimal 
) 
is  
begin  
insert into product ( 
    product_id, product_name, description, price, product_category_id 
) 
values(product_id_arg,product_name_arg,product_description_arg,price_arg,product_category_arg); 
end;
/

begin  
Add_product(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
end; 
/

begin  
Add_product(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
end; 
/

begin  
Add_product(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
end; 
/

BEGIN  
ADD_PRODUCT(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 1001); 
END; 
/

BEGIN  
ADD_PRODUCT(101, 'Self-Driving Vedio Camera', 'Self-driving video camera which automatically follows a subject that is being recorded.', 999, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 999, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 999, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 559, 0002); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 559, 0001); 
END; 
/

BEGIN  
ADD_PRODUCT(102, 'Holographic Keyboard', 'Holographic keyboard that emits a three-dimensional projection of a keyboard and recognizes virtual key presses from the typist.', 559, 0001); 
END; 
/

INSERT INTO Product values (103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001 );

INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001 );

INSERT INTO Product values (103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001 );

INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0002 );

INSERT INTO Product values (103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0003 );

INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0004 );

Begin 
ADD_PRODUCT(103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001); 
END; 
 
Begin 
INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001); 
end; 
/

Begin 
ADD_PRODUCT(103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001); 
END; 
/

Begin 
INSERT INTO Product values (104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001); 
end; 
/

select * from product;

Begin 
ADD_PRODUCT(103,'JBL Headphones', 'JBL headphones best in the market and the battery life is 40 hours.', 1010, 0001); 
END; 
/

Begin 
ADD_PRODUCT(104,'Powerbank', 'Powerbank charges all the devices.', 300, 0001); 
end; 
/

Begin 
ADD_PRODUCT(103,'Charger', 'Fastest charger in the market.', 25, 0001); 
END; 
/

Begin 
ADD_PRODUCT(104,'Powerbank', 'Powerbank that charges all the devices.', 30, 0001); 
end; 
/

delete from product where price = 1010;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

delete from product where price = 300;

select * from product;

Begin 
ADD_PRODUCT(103,'Charger', 'Fastest charger in the market.', 25, 0001); 
END; 
/

Begin 
ADD_PRODUCT(104,'Powerbank', 'Powerbank that charges all the devices.', 30, 0001); 
end; 
/

Select product_id, product_name, price, product_category_id, product_type from product 
inner join product_category on product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category_id, product_type from Product as p 
inner join product_category as pc on p.product_category_id = pc.product_category_id 
where (pc.product_type = 'Computers' or pc.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30 
 
select * from product;

select * from product;

Select product_id, product_name, price, product_category.product_category_id, product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30 
;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30 
 
select * from product;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electronics') 
and price <30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
 
where price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

select * from product;

Select product_id, product_name, price, product_category.product_category_id, product_category.product_type from Product 
inner join product_category on Product.product_category_id = product_category.product_category_id 
where (product_category.product_type = 'Computers' or product_category.product_type = 'Electonics') 
and price <=30;

select * from seller 
;

Create table inventory( 
    Inventory_id decimal(10) primary key, 
    product_id decimal(10) not null, 
    seller_id decimal(10) not null, 
    inventory_num decimal (10), 
    foreign key (product_id) references product 
);

alter table inventory 
add constraint inventory_seller_fk 
forigen key (seller_id) 
references seller(seller_id);

alter table inventory 
add constraint inventory_seller_fk 
foreign key (seller_id) 
references seller(seller_id);

Create or replace procedure add_inventory( 
    inventory_id_arg in decimal, 
    product_id_arg in decimal, 
    seller_id_arg in decimal, 
    inventory_num_arg in decimal 
) 
is  
begin 
insert into inventory 
(inventory_id, product_id, seller_id, inventory_num) 
values (inventory_id_arg, product_id_arg, seller_id_arg, inventory_num_arg); 
end; 
/

begin  
add_inventory (10001, 101, 002,8); 
end; 
 
begin  
add_inventory (10002, 102, 001,10); 
end; 
/

begin  
add_inventory (10001, 101, 002,8); 
end; 
/

begin  
add_inventory (10001, 101, 002,8); 
end; 
 
 

/

select * from inventory;

begin  
add_inventory (10001, 101, 002,8); 
end; 
/

begin  
add_inventory (10002, 102, 001,10); 
end; 
/

select p.product_name, p.product_id, i.inventory_id, i.inventory_num from product p 
join inventory i on p.product_id = i.product_id 
where i.inventory_num < 11;

Create table account ( 
    account_id decimal (10) primary key, 
    email_id varchar(100) not null, 
    password varchar(100) not null 
);

Create table consumer( 
    consumer_id decimal (10) primary key, 
    consumer_first_name varchar(100) not null, 
    consumer_last_name varchar(100) not null, 
    phone_number decimal(12), 
    account_id decimal (10), 
    foreign key (account_id) references account 
);

insert into account values (10100, 'jimscott@gmail.com', 'ilovepam');

insert into account values (10101, 'pam234@gmail.com', 'sugercake');

insert into account values (10102, 'michealscott@gmail.com', 'bestboss');

insert into account values (10103, 'dwightking@gmail.com', 'futureregionalmanager');

insert into account values (10104, 'philldunphy@gmail.com', 'phillosphy101');

insert into account values (10105, 'alexdunphy@gmail.com', '1234@password');

insert into account values (10106, 'clairdunphy@gmail.com', 'crazylady');

insert into account values (10107, 'haileydunphy@gmail.com', 'queenbee');

insert into account values (10108, 'lukedunphy@gmail.com', 'monkeydance');

create or replace procedure add_consumer( 
    consumer_id_arg decimal, 
    consumer_first_name_arg in varchar, 
    consumer_last_name_agr in varchar, 
    phone_number_arg in decimal, 
    account_id_arg in decimal 
); 
is  
begin  
insert into consumer  
(consumer_id, consumer_first_name, consumer_last_name, phone_number, account_id) 
values (consumer_id_arg, consumer_first_name_arg, consumer_last_name_agr, phone_number_arg, account_id_arg); 
end; 

/

create or replace procedure add_consumer( 
    consumer_id_arg decimal, 
    consumer_first_name_arg in varchar, 
    consumer_last_name_agr in varchar, 
    phone_number_arg in decimal, 
    account_id_arg in decimal 
) 
is  
begin  
insert into consumer  
(consumer_id, consumer_first_name, consumer_last_name, phone_number, account_id) 
values (consumer_id_arg, consumer_first_name_arg, consumer_last_name_agr, phone_number_arg, account_id_arg); 
end; 

/

begin  
add_consumer(11111, 'jim', 'scott', 5080934581, 10100); 
add_consumer(11112, 'pam', 'scott', 5089670428, 10101); 
add_consumer(11113, 'micheal', 'scott', 5082739779, 10102); 
end; 
/

select * from consumer;

begin  
add_consumer(11114, 'dwigt', 'scott', 5089622740, 10103); 
add_consumer(11115, 'phill', 'dunphy', 5086703342, 10104); 
add_consumer(11116, 'alex', 'dunphy', 5084588319, 10105); 
add_consumer(11117, 'clair', 'dunphy', 5088100227, 10106); 
add_consumer(11118, 'haiely', 'dunphy', 5084281739, 10107); 
add_consumer(11119, 'luke', 'dunphy', 5083956619, 10108); 
end; 
/

select consumer_last_name, count(1) from consumer 
group by consumer_last_name having count(1) > 3;

create table Orders ( 
    order_id decimal(10) primary key, 
    product_id decimal (10), 
    quantity decimal (10), 
    consumer_id decimal(10), 
    foreign key (consumer_id) references consumer, 
    foreign key (product_id) references Product 
);

create or replace procedure add_order_update_inventory( 
    order_id_arg in decimal, 
    product_id_arg in decimal, 
    quantity_arg in decimal, 
    consumer_id_arg in decimal 
) 
is  
begin 
insert into orders(order_id, product_id,quantity, consumer_id) 
values ( order_id_arg,product_id_arg,quantity_arg,consumer_id_arg) 
 
update inventory 
set inventory_num = inventory_num - quantity_arg 
where product_id = product_id_arg; 
end;
/

create or replace procedure add_order_update_inventory( 
    order_id_arg in decimal, 
    product_id_arg in decimal, 
    quantity_arg in decimal, 
    consumer_id_arg in decimal 
) 
is  
begin 
insert into orders(order_id, product_id,quantity, consumer_id) 
values (order_id_arg,product_id_arg,quantity_arg,consumer_id_arg); 
 
update inventory 
set inventory_num = inventory_num - quantity_arg 
where product_id = product_id_arg; 
end;
/

begin  
Add_order_update_inventory(900001, 101, 1, 11113); 
end; 
/

begin  
Add_order_update_inventory(900002, 102, 3, 11111); 
end; 
/

select cs.consumer_first_name, cs.consumer_last_name, cs.address from consumer cs 
join orders od on orders.consumer_id= cs.consumer_id where od.product_id in (select o.product from product p 
    join orders on on p.product _is=o.product_id 
    join consumer c on c.consumer_id = 0.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3);

select cs.consumer_first_name, cs.consumer_last_name, cs.address from consumer cs 
join orders od on orders.consumer_id= cs.consumer_id where od.product_id in (select o.product from product p 
    join orders on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3);

select cs.consumer_first_name, cs.consumer_last_name, cs.address from consumer cs 
join orders od on orders.consumer_id= cs.consumer_id where od.product_id in (select o.product from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3);

select cs.consumer_first_name, cs.consumer_last_name, cs.address from consumer cs 
join orders od on orders.consumer_id= cs.consumer_id where od.product_id in (select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3);

select cs.consumer_first_name, cs.consumer_last_name, cs.address from consumer cs 
join orders od on od.consumer_id= cs.consumer_id where od.product_id in (select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3);

select cs.consumer_first_name, cs.consumer_last_name, cs.address from consumer cs 
join orders od on od.consumer_id = cs.consumer_id where od.product_id in ( 
    select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3 
    );

select cs.consumer_first_name, cs.consumer_last_name, cs.phone_number from consumer cs 
join orders od on od.consumer_id = cs.consumer_id where od.product_id in ( 
    select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id) >= 3 
    );

select cs.consumer_first_name, cs.consumer_last_name, cs.phone_number from consumer cs 
join orders od on od.consumer_id = cs.consumer_id where od.product_id in ( 
    select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
     
    );

alter table consumer 
add address varchar(250);

update consumer set address = 'Scanton Penn' where consumer_id = 11111;

update consumer set address = 'Scanton Penn' where consumer_id = 11111;

update consumer set address = 'Scanton Penn' where consumer_id = 11111;

update consumer set address = 'Scanton Penn' where consumer_id = 11111;

update consumer set address = 'Scanton Penn' where consumer_id = 11111;

select * from consumer;

update consumer set address = 'Scanton Penn' where consumer_id = 11112;

update consumer set address = 'Maywood, Worcester' where consumer_id = 11113;

update consumer set address = 'Park eve, Boston, MA' where consumer_id = 11114;

update consumer set address = 'Clifton Street, New york' where consumer_id = 11115;

update consumer set address = 'Florence street, Ohio' where consumer_id = 11116;

update consumer set address = 'Maywood, Worcester, MA' where consumer_id = 11117;

update consumer set address = 'Aurburn, MA' where consumer_id = 11118;

update consumer set address = 'Scanton Penn' where consumer_id = 11119;

begin  
Add_order_update_inventory(900003, 101, 2 , 11116); 
Add_order_update_inventory(900004, 102, 1 , 11114); 
Add_order_update_inventory(900005, 101, 1 , 11115); 
Add_order_update_inventory(900006, 102, 1 , 11119); 
Add_order_update_inventory(900007, 101, 1 , 11117); 
Add_order_update_inventory(900008, 102, 1 , 11112); 
end; 
/

begin  
Add_order_update_inventory(900003, 101, 2 , 11116); 
Add_order_update_inventory(900004, 102, 1 , 11114); 
Add_order_update_inventory(900005, 101, 1 , 11115); 
Add_order_update_inventory(900006, 102, 1 , 11119); 
Add_order_update_inventory(900007, 101, 1 , 11117); 
Add_order_update_inventory(900008, 102, 1 , 11112); 
end; 
/

begin  
Add_order_update_inventory(900003, 101, 2 , 11116) 
Add_order_update_inventory(900004, 102, 1 , 11114) 
Add_order_update_inventory(900005, 101, 1 , 11115) 
Add_order_update_inventory(900006, 102, 1 , 11119) 
Add_order_update_inventory(900007, 101, 1 , 11117) 
Add_order_update_inventory(900008, 102, 1 , 11112) 
end; 
/

begin  
Add_order_update_inventory(900003, 101, 2 , 11116); 
Add_order_update_inventory(900004, 102, 1 , 11114); 
Add_order_update_inventory(900005, 101, 1 , 11115); 
Add_order_update_inventory(900006, 102, 1 , 11119); 
Add_order_update_inventory(900007, 101, 1 , 11117); 
Add_order_update_inventory(900008, 102, 1 , 11112); 
end; 
/

select * from orders;

begin  
Add_order_update_inventory(900003, 101, 2 , 11116); 
Add_order_update_inventory(900004, 102, 1 , 11114); 
Add_order_update_inventory(900005, 101, 1 , 11115); 
Add_order_update_inventory(900006, 102, 1 , 11119); 
Add_order_update_inventory(900007, 101, 1 , 11117); 
Add_order_update_inventory(900008, 102, 1 , 11112); 
end; 
/

select cs.consumer_first_name, cs.consumer_last_name, cs.phone_number from consumer cs 
join orders od on od.consumer_id = cs.consumer_id where od.product_id in ( 
    select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    ) 
;

select cs.consumer_first_name, cs.consumer_last_name, cs.phone_number, cs.address from consumer cs 
join orders od on od.consumer_id = cs.consumer_id where od.product_id in ( 
    select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    ) 
;

select cs.consumer_first_name, cs.consumer_last_name, cs.phone_number, cs.address from consumer cs 
join orders od on od.consumer_id = cs.consumer_id where od.product_id in ( 
    select o.product_id from product p 
    join orders o on p.product_id=o.product_id 
    join consumer c on c.consumer_id = o.consumer_id 
    group by o.product_id having count(o.consumer_id)>=3 
    ) 
;

create table shipment ( 
    traking_id decimal (10) primary key, 
    shipment_speed varchar(100), 
    order_id decimal (10), 
    foreign key (order_id) references orders 
);

create or replace procedure add_shipment( 
    tracking_id_arg in decimal, 
    shipment_speed_arg in varchar, 
    order_id_arg in decimal 
) 
is  
begin  
insert into shipment (traking_id, shipment_speed, order_id) 
values(tracking_id_arg, shipment_speed_arg, order_id_arg); 
end; 

/

begin  
Add_shipment (11, 'One-Day', 113, 900002); 
Add_shipment (12, 'Express', 111, 900004); 
Add_shipment (13, 'One-Day', 112, 900007); 
end; 
/

begin  
Add_shipment(11, 'One-Day', 113, 900002); 
Add_shipment(12, 'Express', 111, 900004); 
Add_shipment(13, 'One-Day', 112, 900007); 
end; 
/

begin  
Add_shipment(11, 'One-Day', 900002); 
Add_shipment(12, 'Express', 900004); 
Add_shipment(13, 'One-Day', 900007); 
end; 
/

Select c. consumer_first_name, c.consumer_last_name, s.traking_id, s.shipment_speed, s.order_id from shipment s 
join orders o on o.order_id = s.order_id 
join consumer c in c.consumer_id = o.consumer_id;

Select c.consumer_first_name, c.consumer_last_name, s.traking_id, s.shipment_speed, s.order_id from shipment s 
join orders o on o.order_id = s.order_id 
join consumer c in c.consumer_id = o.consumer_id;

Select c.consumer_first_name, c.consumer_last_name, s.traking_id, s.shipment_speed, s.order_id from shipment s 
join orders o on o.order_id = s.order_id 
join consumer c in c.consumer_id = o.consumer_id;

Select c.consumer_first_name, c.consumer_last_name, s.traking_id, s.shipment_speed, s.order_id from shipment s 
join orders o on o.order_id = s.order_id 
join consumer c on c.consumer_id = o.consumer_id;

Create index idx_product_id on product (product_id, product_category_id);

