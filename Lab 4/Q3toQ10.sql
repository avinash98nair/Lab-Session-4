/* Question 3*/

SELECT o.* FROM `order` AS o
INNER JOIN customer AS c
ON c.CUS_ID = o.CUS_ID;

SELECT o.*, c.CUS_NAME, C.CUS_GENDER FROM `order` AS o
INNER JOIN customer AS c
ON c.CUS_ID = o.CUS_ID HAVING o.ORD_AMOUNT >= 3000;

SELECT COUNT(T2.CUS_GENDER) AS No_Of_Customer, T2.CUS_GENDER AS Gender FROM
(
SELECT T1.CUS_ID, T1.CUS_GENDER, T1.ORDER_AMOUNT, T1.CUS_NAME FROM
(
SELECT o.*, c.CUS_NAME, c.CUS_GENDER FROM `order` AS o
INNER JOIN customer AS c
ON c.CUS_ID = o.CUS_ID HAVING o.ORD_AMOUNT >= 3000
) AS T1
) AS T2 GROUP BY T2.CUS_GENDER;

/*Question 4*/

SELECT O.* FROM `ORDER` AS O
SELECT * FROM supplier_pricing;
SELECT * FROM product;

SELECT O.* FROM `ORDER` AS O
INNER JOIN supplier_pricing as sp
where o.PRICING_ID = sp.PRICING_ID;

select p.* from
(
SELECT O.* FROM `ORDER` AS O
INNER JOIN supplier_pricing as sp
where o.PRICING_ID = sp.PRICING_ID
) as p
inner join customer as c
where p.CUS_ID = c.CUS_ID;

select q.CUS_ID, q.cus_name, q.ord_id, product.pro_name from
(
select c.CUS_ID, c.CUS_NAME, p.ord_id, p.ord_amount, p.pro_id from
(
SELECT O.*, sp.pro_id FROM `ORDER` AS O
inner join supplier_pricing as sp
where o.PRICING_ID = sp.PRICING_ID
)as p
inner join customer as c
where p.CUS-ID = c.CUS_ID AND c.CUS_ID = 2
) as q
inner join product
on q.pro_id = product.pro_id;

/*Question 5*/

SELECT * FROM supplier AS SUP;
SELECT * FROM supplier_pricing AS SP;

select count(sp.pro_id) as No_Of_Product, sp.SUPP_ID from supplier_pricing as sp group by sp.SUPP_ID;

SELECT SP.SUPP_ID FROM supplier AS SP GROUP BY SP.SUPP_ID HAVING COUNT(SP.SUPP_ID)>3;

SELECT SUP.* FROM supplier AS SUP WHERE SUP.SUPP_ID IN
(
SELECT SP.SUPP_ID FROM supplier_pricing AS SP GROUP BY SP.SUPP_ID HAVING COUNT(SP.SUPP_ID)>3
);

/*Question 6*/

select c.CAT_ID, c.CAT_NAME, min(t3.min_price) as Min_Price from category as c
inner join
(
select p.CAT_ID, p.PRO_NAME, t2.* from product as p
inner join
(
select pro_id, min(supp_price) as Min_Price from supplier_pricing group by pro_id
) as t2 on t2.PRO_ID = p.PRO_ID
) as t3 on t3.CAT_ID = c.CAT_ID group by t3.CAT_ID;