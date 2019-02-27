--2019-2-26 学习--

--原先的表--
SELECT *  FROM PRODUCTS_TBL ;

--新生成的表--
CREATE TABLE products_tbl_test AS SELECT *  FROM products_tbl ;
-- 新生成的表跟原表一模一样--
SELECT * FROM products_tbl_test;

drop table products_tbl_test;

ALTER TABLE PRODUCTS_TBL ADD CONSTRAINT PRODUCTS_PK PRIMARY KEY (PROD_ID , VEND_ID);