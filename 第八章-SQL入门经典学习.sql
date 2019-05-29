
--Date:2019-4-10  �ڰ��� ʹ�ò����������ݷ���

-- ���� =
SELECT * FROM products_tbl WHERE prod_id = '13';

--������ != ���� <>  ע���Сд
--SELECT * FROM PRODUCTS_TBL WHERE PROD_ID != '13';
SELECT * FROM products_tbl WHERE prod_id <> '13';

--���� > ���ڵ��� >=
SELECT * FROM products_tbl WHERE COST >=14.5;

--С�� < С�ڵ��� <=
SELECT * FROM products_tbl WHERE COST <=14.5;

--�߼������

-- is null ������ ='null' 'null'��������Ϊnull���ַ���
SELECT * FROM employee_tbl WHERE pager IS NULL;

--between ��[min,max]��Χ��  ������
SELECT * FROM products_tbl WHERE COST BETWEEN 5.95 AND 14.5;

-- in ��һ��ֵ��һ��ָ���б���бȽ�  IN���Ը�OR�໥��� ����IN�ٶȸ���
SELECT * FROM products_tbl WHERE prod_id IN ('13','9','87','119');

--ģ����ѯlike  %:0����һ�������ַ� _:����һ�����ֻ��ַ�
-- ��Ʒ���� �ڶ�λΪ2 ��βΪ3�Ĳ�Ʒ��Ϣ
SELECT * FROM products_tbl WHERE prod_desc LIKE '_2%3';

--exists �Ӳ�ѯʾ��
SELECT COST FROM products_tbl WHERE EXISTS (
  SELECT COST FROM products_tbl WHERE COST>10 );

--all ���ڰ�һ��ֵ����һ���������ȫ��ֵ���бȽ�

--������Щ�۸�С��10�����м�¼
--ע�� ALL����ֻ���и� ǰ���ɸѡ�ļ�¼��ƥ������� cost��Ӧ����all(ֻ����COSTһ��)
SELECT * FROM products_tbl WHERE COST> ALL(SELECT COST FROM products_tbl WHERE COST< 10);

--some��any ���ڰ�һ��ֵ����һ���б�������ֵ���бȽ� some��any�ı����������໥�滻��
SELECT COST FROM products_tbl WHERE COST > ANY(SELECT COST FROM products_tbl WHERE COST> 10);

--���Ӳ����� AND OR
--AND��һ��SQL����WHERE�Ӿ���ʹ�ö������ AND��������������ΪTRUE����ʵ��ִ��SQL
SELECT * FROM products_tbl WHERE COST >10 AND COST <30;

--OR ��һ��SQL����WHERE�Ӿ���ʹ�ö������ ����SQL��DML����DQL ֻҪOR���ӵ�����������һ����TRUE SQL�ͻ�ִ��
SELECT * FROM products_tbl WHERE prod_id='90' OR prod_id='2345';

--�۸���� 10. ���Ҳ�Ʒ��ʶ�������г���������ʶ֮һ ������
SELECT * FROM products_tbl WHERE COST>5 
  AND(prod_id='222' 
  OR prod_id='90'
  OR prod_id='11235'
  OR prod_id='13'
);

--�������� ������ܲ���
SELECT * FROM products_tbl WHERE COST>5 
  AND prod_id='222' 
  OR prod_id='90'
  OR prod_id='11235'
  OR prod_id='13';

--�󷴲����� NOT

--���������
--+�ӷ� ��ֵ��ӷ� ���ַ��������ӷ�
SELECT salary FROM employee_pay_tbl WHERE salary+bonus > '30000';

--����(-)

--�˷�(*)

--����(/)

--�κ���
--drop  TABLE CUSTOMER_TBL;
CREATE TABLE customer_tbl(
cust_id VARCHAR(11)  NOT NULL,
cust_name  VARCHAR(30)  NOT NULL,
cust_address VARCHAR(20) NOT NULL,
cust_city VARCHAR(12) NOT NULL,
cust_s��ate VARCHAR(2) NOT NULL,
cust_zip VARCHAR(5) NOT NULL,
cust_phone VARCHAR(10),
cust_fax VARCHAR(10)
);

describe products_tbl;
-- ������
--��дһ�� SELECT ��Ѯ�����ؼ۸�С��1.00 ����� 12.50 �Ĳ�Ʒ ִ�мƻ� ������3 OPTIONS��FULL
SELECT * FROM products_tbl WHERE COST<1.00 OR COST>12.5;
-- NOT IN ִ�мƻ� ����7 OPTIONS: ANTI
SELECT * FROM products_tbl WHERE COST NOT IN(SELECT COST FROM products_tbl WHERE COST>=1.00 AND COST<=12.5 );

-- ������
SELECT  prod_desc, COST, COST*0.05 AS salerate FROM products_tbl ORDER BY COST DESC;

-- ��6��
SELECT  prod_desc, COST, COST*0.05 AS salerate, COST*0.05+cost AS addcost  FROM products_tbl ORDER BY COST DESC;
SELECT  prod_desc, COST, COST*0.05 AS salerate, COST*1.05 AS addcost  FROM products_tbl ORDER BY COST DESC;

-- ������
SELECT * FROM products_tbl WHERE prod_id='6' OR prod_id='9' OR prod_id='13';
SELECT * FROM products_tbl WHERE prod_id !='6' AND prod_id !='9' AND prod_id !='13';

-- �ڰ���
SELECT * FROM products_tbl WHERE prod_id IN��'6','9','13'��;
SELECT * FROM products_tbl WHERE prod_id NOT IN��'6','9','13'��;

-- �ھ���
SELECT * FROM products_tbl WHERE prod_desc  LIKE 'P%';
SELECT * FROM products_tbl WHERE prod_desc not LIKE 'P%'; 


