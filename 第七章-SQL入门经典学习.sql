--2019-3-24 Sql入门经典第七章
--查询表所有的字段
SELECT * FROM PRODUCTS_TBL;
select CUST_NAME  from customer_tbl;

--加上WHERE 限定条件
SELECT * FROM PRODUCTS_TBL where cost<5;

--加上WHERE 限定条件 order排序 默认升序
SELECT * FROM PRODUCTS_TBL WHERE COST<400 ORDER BY COST ;

--加上WHERE 限定条件 order排序 desc降序
SELECT * FROM PRODUCTS_TBL WHERE COST<20 ORDER BY PROD_DESC DESC;
--SQL数字转换成字符  补全格式排序
SELECT ROWID, TO_CHAR(COST,'999990.000') ,SUBSTR( TO_CHAR(COST,'999990.000'),-4,2) FROM PRODUCTS_TBL ORDER BY SUBSTR( TO_CHAR(COST,'999990.000'),-2,2);
select prod_id,cost,prod_id + cost from PRODUCTS_TBL;

--1代表第一个字段 按照prod_desc排序
select prod_desc, prod_id,cost from products_tbl where cost < 200 order by 1;


--- 7.3
--7.3.1
select count(*) from PRODUCTS_TBL;

--课后题3
SELECT PROD_DESC,COST FROM PRODUCTS_TBL ORDER BY 2 DESC;
--SELECT prod_desc,to_char（COST,'999990.000'）costnum FROM products_tbl ORDER BY costnum DESC;
