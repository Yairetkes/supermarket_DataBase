--defining the tables, as described at the maman:

CREATE TABLE supplier
(
	sid int,
	sname varchar(30),
	saddres varchar(50),
	phone numeric(9,0),
	PRIMARY KEY(sid));

CREATE TABLE product
(
	code int,
	pname varchar(30),
	descr varchar(50),
	utype varchar(30),
	uprice float,
	manu varchar(30),
	sid int,
	PRIMARY KEY (code),
	FOREIGN KEY (sid) REFERENCES supplier);


CREATE TABLE branch
(
	bid int,
	bname varchar(30),
	baddress varchar(50),
	PRIMARY KEY (bid));


CREATE TABLE stock
(
	code int,
	bid int,
	units float,
	PRIMARY KEY (code,bid),
	FOREIGN KEY (code) REFERENCES product,
	FOREIGN KEY (bid) REFERENCES branch);

CREATE TABLE receipt
(
	bid int,
	rdate date,
	rtime time,
	ptype varchar(30),
	total float DEFAULT 0,
	PRIMARY KEY (bid,rdate,rtime),
	FOREIGN KEY (bid) REFERENCES branch);
	
	CREATE TABLE purchase
	(
		bid int,
		rdate date,
		rtime time,
		code int,
		units float CHECK(units>0),
		PRIMARY KEY (bid,rdate,rtime,code),
		foreign key (bid) references Branch,
		foreign key (bid, rdate, rtime) references Receipt,
		foreign key (code) references Product);