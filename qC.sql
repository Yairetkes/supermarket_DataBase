INSERT INTO supplier VALUES (111,'supplier2','road2 tel aviv',111111111),
(222,'supplier3','road 4 yerucham',222222222),
(333,'supplier4','weitzman 3 acre',333333333);

INSERT INTO product VALUES (987,'Tomatoes','Vegetable','Kg',5.99,'manufacturer1',111),
(876,'Cucumbers','Vegetable','Kg',4.99,'manufacturer2',222),
(543,'Cornflakes','Cereals','Box',15.9,'manufacturer2',222);

INSERT INTO branch VALUES (989,'tel aviv','road 1 tel aviv'),
(878,'Raanana','road 2 raanana'),
(767,'Holon','road 3 holon');

INSERT INTO stock VALUES (987,989,50),
(987,878,75),
(987,767,100);

INSERT INTO receipt VALUES (989,'18-3-20','1000','Cash',100),
(989,'16-7-20','1230','Credit',34),
(989,'15-7-20','1535','Credit',60);

INSERT INTO purchase VALUES (989,'18-3-20','1000',987,5),
(989,'18-3-20','1000',876,3),
(989,'18-3-20','1000',543,4);

