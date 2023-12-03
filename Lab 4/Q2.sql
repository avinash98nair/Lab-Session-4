INSERT INTO SUPPLIER VALUES (1, "Rajesh Retails", "Delhi", 1234567890);
INSERT INTO SUPPLIER VALUES (2, "Appario Ltd.", "Mumbai", 9876543210);
INSERT INTO SUPPLIER VALUES (3, "Knome products", "Bangalore", 6549873210);
INSERT INTO SUPPLIER VALUES (4, "Bansal Retails", "Kochi", 3219876540);
INSERT INTO SUPPLIER VALUES (5, "Mittal Ltd.", "Lucknow", 7418529630);

INSERT INTO CUSTOMER VALUES (1, "AAKASH", '9999999999', "DELHI", 'M');
INSERT INTO CUSTOMER VALUES (2, "AMAN", '9875643298', "NOIDA", 'M');
INSERT INTO CUSTOMER VALUES (3, "NEHA", '4659783691', "MUMBAI", 'F');
INSERT INTO CUSTOMER VALUES (4, "MEGHA", '6399874566', "KOLKATA", 'F');
INSERT INTO CUSTOMER VALUES (5, "PULKIT", '8351496352', "LUCKNOW", 'M');

INSERT INTO CATEGORY VALUES (1, "BOOKS");
INSERT INTO CATEGORY VALUES (2, "GAMES");
INSERT INTO CATEGORY VALUES (3, "GROCERIES");
INSERT INTO CATEGORY VALUES (4, "ELECTRONICS");
INSERT INTO CATEGORY VALUES (5, "CLOTHES");

INSERT INTO PRODUCT VALUES (1, "GTA V", "Windows 7 and above with i5 processor and 8 GB RAM", 2);
INSERT INTO PRODUCT VALUES (2, "T SHIRT", "Size-L with Black, Blue and White variations", 5);
INSERT INTO PRODUCT VALUES (3, "ROG LAPTOP", "Windows 10 with 15 inch screen, i7 processor, 1TB SSD", 4);
INSERT INTO PRODUCT VALUES (4, "OATS", "Highly Nutritious from Nestle", 3);
INSERT INTO PRODUCT VALUES (5, "HARRY POTTER", "Best collection of all time by J.K Rowling", 1);
INSERT INTO PRODUCT VALUES (6, "MILK", "1L Toned Milk", 3);
INSERT INTO PRODUCT VALUES (7, "Boat Earphones", "1.5 Mtr Long Dolby Atmos", 4);
INSERT INTO PRODUCT VALUES (8, "Jeans", "Stretchable Denim Jeans with various sizes and colour", 5);
INSERT INTO PRODUCT VALUES (9, "Project IGI", "Compatible with Windows 7 and above", 2);
INSERT INTO PRODUCT VALUES (10, "Hoodie", "Black GUCCI for 13 years and above", 5);
INSERT INTO PRODUCT VALUES (11, "Rich Dad Poor Dad", "Written by Robert Kiyosaki", 1);
INSERT INTO PRODUCT VALUES (12, "Train Your Brain", "By Shireen Stephen", 1);

INSERT INTO SUPPLIER_PRICING VALUES (1,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "GTA V"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Mumbai"),1500);
INSERT INTO SUPPLIER_PRICING VALUES (2,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "ROG LAPTOP"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Lucknow"),30000);
INSERT INTO SUPPLIER_PRICING VALUES (3,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "HARRY POTTER"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Delhi"),3000);
INSERT INTO SUPPLIER_PRICING VALUES (4,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "T SHIRT"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Bangalore"),2500);
INSERT INTO SUPPLIER_PRICING VALUES (5,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "OATS"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Delhi"),1000);
INSERT INTO SUPPLIER_PRICING VALUES (6,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "Train Your Brain"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Mumbai"),780);
INSERT INTO SUPPLIER_PRICING VALUES (7,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "Train Your Brain"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Kochi"),789);
INSERT INTO SUPPLIER_PRICING VALUES (8,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "ROG LAPTOP"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Delhi"),31000);
INSERT INTO SUPPLIER_PRICING VALUES (9,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "GTA V"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Lucknow"),1450);
INSERT INTO SUPPLIER_PRICING VALUES (10,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "OATS"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Mumbai"),999);
INSERT INTO SUPPLIER_PRICING VALUES (11,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "Boat Earphones"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Bangalore"),549);
INSERT INTO SUPPLIER_PRICING VALUES (12,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "Boat Earphones"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Kochi"),529);
INSERT INTO SUPPLIER_PRICING VALUES (13,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "MILK"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Mumbai"),105);
INSERT INTO SUPPLIER_PRICING VALUES (14,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "MILK"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Delhi"),99);
INSERT INTO SUPPLIER_PRICING VALUES (15,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "T SHIRT"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Lucknow"),2999);
INSERT INTO SUPPLIER_PRICING VALUES (16,(SELECT PRO_ID FROM PRODUCT WHERE PRO_NAME = "HARRY POTTER"),(SELECT SUPP_ID FROM SUPPLIER WHERE SUPP_CITY = "Mumbai"),2999);

INSERT INTO `ORDER` VALUES (101, 1500, "2021-10-06", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "AMAN"), 1);
INSERT INTO `ORDER` VALUES (102, 1000, "2021-10-12", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "NEHA"), 5);
INSERT INTO `ORDER` VALUES (103, 30000, "2021-09-16", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "PULKIT"), 2);
INSERT INTO `ORDER` VALUES (104, 1500, "2021-10-05", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "AAKASH"), 1);
INSERT INTO `ORDER` VALUES (105, 3000, "2021-08-16", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "MEGHA"), 3);
INSERT INTO `ORDER` VALUES (106, 1450, "2021-08-18", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "AAKASH"), 9);
INSERT INTO `ORDER` VALUES (107, 789, "2021-09-01", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "NEHA"), 7);
INSERT INTO `ORDER` VALUES (108, 780, "2021-09-07", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "PULKIT"), 6);
INSERT INTO `ORDER` VALUES (109, 3000, "2021-08-10", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "PULKIT"), 3);
INSERT INTO `ORDER` VALUES (110, 2500, "2021-09-10", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "AMAN"), 4);
INSERT INTO `ORDER` VALUES (111, 1000, "2021-09-15", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "MEGHA"), 5);
INSERT INTO `ORDER` VALUES (112, 789, "2021-09-16", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "MEGHA"), 7);
INSERT INTO `ORDER` VALUES (113, 31000, "2021-09-16", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "AAKASH"), 8);
INSERT INTO `ORDER` VALUES (114, 1000, "2021-09-16", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "NEHA"), 5);
INSERT INTO `ORDER` VALUES (115, 3000, "2021-09-16", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "PULKIT"), 3);
INSERT INTO `ORDER` VALUES (116, 99, "2021-09-17", (SELECT CUS_ID FROM CUSTOMER WHERE CUS_NAME = "AMAN"), 14);

INSERT INTO RATING VALUES (1, 101, 4);
INSERT INTO RATING VALUES (2, 102, 3);
INSERT INTO RATING VALUES (3, 103, 1);
INSERT INTO RATING VALUES (4, 104, 2);
INSERT INTO RATING VALUES (5, 105, 4);
INSERT INTO RATING VALUES (6, 106, 3);
INSERT INTO RATING VALUES (7, 107, 4);
INSERT INTO RATING VALUES (8, 108, 4);
INSERT INTO RATING VALUES (9, 109, 3);
INSERT INTO RATING VALUES (10, 110, 5);
INSERT INTO RATING VALUES (11, 111, 3);
INSERT INTO RATING VALUES (12, 112, 4);
INSERT INTO RATING VALUES (13, 113, 2);
INSERT INTO RATING VALUES (14, 114, 1);
INSERT INTO RATING VALUES (15, 115, 1);
INSERT INTO RATING VALUES (16, 116, 0);