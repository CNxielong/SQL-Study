--2019-3-24 Sql���ž��������
--��ѯ�����е��ֶ�
SELECT * FROM PRODUCTS_TBL;
select CUST_NAME  from customer_tbl;

--����WHERE �޶�����
SELECT * FROM PRODUCTS_TBL where cost<5;

--����WHERE �޶����� order���� Ĭ������
SELECT * FROM PRODUCTS_TBL WHERE COST<400 ORDER BY COST ;

--����WHERE �޶����� order���� desc����
SELECT * FROM PRODUCTS_TBL WHERE COST<20 ORDER BY PROD_DESC DESC;
--SQL����ת�����ַ�  ��ȫ��ʽ����
SELECT ROWID, TO_CHAR(COST,'999990.000') ,SUBSTR( TO_CHAR(COST,'999990.000'),-4,2) FROM PRODUCTS_TBL ORDER BY SUBSTR( TO_CHAR(COST,'999990.000'),-2,2);
select prod_id,cost,prod_id + cost from PRODUCTS_TBL;

--1�����һ���ֶ� ����prod_desc����
select prod_desc, prod_id,cost from products_tbl where cost < 200 order by 1;


--- 7.3
--7.3.1
select count(*) from PRODUCTS_TBL;

--�κ���3
SELECT PROD_DESC,COST FROM PRODUCTS_TBL ORDER BY 2 DESC;
--SELECT prod_desc,to_char��COST,'999990.000'��costnum FROM products_tbl ORDER BY costnum DESC;
