create table customer (
	customer_id varchar(20) primary key,
	 customer_name varchar(20) not null,
	  customer_tel int
);


create table product(
	product_id varchar(20) primary key,
	 product_name varchar(20) not null,
	  price float check (price >= 0)
);



create table orders(
	customer_id varchar(20),
	 product_id varchar(20),
	  quantity int,
	   total amount float,
           constraint fk_customer_id Foreign key(customer_id) references customer(customer_id),
            constraint fk_product_id Foreign key(product_id) references product(product_id)
);

alter table product add column category varchar(20);
alter table orders add column orderdate date default current_date
