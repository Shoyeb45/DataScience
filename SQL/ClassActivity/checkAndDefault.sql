use pw;
show tables;

create table cart_items (
	item_id int auto_increment primary key,
    name varchar(50) not null,
    quantity int not null,
    price dec(5, 2) not null,
    sales_tax dec(5, 2) not null default 0.1,
    check(quantity > 0),
    check(sales_tax >= 0)
);

DESC cart_items;

insert into cart_items(name, quantity, price) values
("Ipad", 1, 50);

select * from cart_items;

INSERT INTO cart_items(name, quantity, price)
VALUES('Battery',4, 0.25 );

alter table cart_items 	
alter column quantity set default 1;

-- how to drop default value

alter table cart_items
alter column quantity drop default; 
