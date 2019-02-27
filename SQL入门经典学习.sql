--2019-2-26 ѧϰ--

--cha xun--
SELECT *  FROM PRODUCTS_TBL ;

--?????ɵı?--
CREATE TABLE products_tbl_test AS SELECT *  FROM products_tbl ;
-- ?????ɵı???ԭ??һģһ??--
SELECT * FROM products_tbl_test;

drop table products_tbl_test;

ALTER TABLE PRODUCTS_TBL ADD CONSTRAINT PRODUCTS_PK PRIMARY KEY (PROD_ID , VEND_ID);