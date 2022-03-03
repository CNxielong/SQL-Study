
--Date:2019-4-10  第八章 使用操作符对数据分类

-- 等于 =
SELECT * FROM products_tbl WHERE prod_id = '13';

--不等于 != 或者 <>  注意大小写
--SELECT * FROM PRODUCTS_TBL WHERE PROD_ID != '13';
SELECT * FROM products_tbl WHERE prod_id <> '13';

--大于 > 大于等于 >=
SELECT * FROM products_tbl WHERE COST >=14.5;

--小于 < 小于等于 <=
SELECT * FROM products_tbl WHERE COST <=14.5;

--逻辑运算符

-- is null 不能用 ='null' 'null'代表内容为null的字符串
SELECT * FROM employee_tbl WHERE pager IS NULL;

--between 在[min,max]范围内  闭区间
SELECT * FROM products_tbl WHERE COST BETWEEN 5.95 AND 14.5;

-- in 把一个值与一个指定列表进行比较  IN可以跟OR相互替代 但是IN速度更快
SELECT * FROM products_tbl WHERE prod_id IN ('13','9','87','119');

--模糊查询like  %:0个、一个或多个字符 _:代表一个数字或字符
-- 产品描述 第二位为2 结尾为3的产品信息
SELECT * FROM products_tbl WHERE prod_desc LIKE '_2%3';

--exists 子查询示例
SELECT COST FROM products_tbl WHERE EXISTS (
  SELECT COST FROM products_tbl WHERE COST>10 );

--all 用于把一个值与零一二集合里的全部值进行比较

--大于那些价格小于10的所有记录
--注意 ALL里面只能有跟 前面表筛选的记录相匹配的数据 cost对应后面all(只能有COST一列)
SELECT * FROM products_tbl WHERE COST> ALL(SELECT COST FROM products_tbl WHERE COST< 10);

--some和any 用于把一个值与另一个列表里任意值进行比较 some是any的别名，可以相互替换。
SELECT COST FROM products_tbl WHERE COST > ANY(SELECT COST FROM products_tbl WHERE COST> 10);

--连接操作符 AND OR
--AND在一条SQL语句的WHERE子句里使用多个条件 AND的连接条件必须为TRUE才能实际执行SQL
SELECT * FROM products_tbl WHERE COST >10 AND COST <30;

--OR 在一条SQL语句的WHERE子句里使用多个条件 无论SQL是DML还是DQL 只要OR连接的条件有至少一个是TRUE SQL就会执行
SELECT * FROM products_tbl WHERE prod_id='90' OR prod_id='2345';

--价格大于 10. 而且产品标识必须是列出的三个标识之一 加括号
SELECT * FROM products_tbl WHERE COST>5 
  AND(prod_id='222' 
  OR prod_id='90'
  OR prod_id='11235'
  OR prod_id='13'
);

--不加括号 结果可能不对
SELECT * FROM products_tbl WHERE COST>5 
  AND prod_id='222' 
  OR prod_id='90'
  OR prod_id='11235'
  OR prod_id='13';

--求反操作符 NOT

--算术运算符
--+加法 数值算加法 有字符串算连接符
SELECT salary FROM employee_pay_tbl WHERE salary+bonus > '30000';

--减法(-)

--乘法(*)

--除法(/)

--课后题
--drop  TABLE CUSTOMER_TBL;
CREATE TABLE customer_tbl(
cust_id VARCHAR(11)  NOT NULL,
cust_name  VARCHAR(30)  NOT NULL,
cust_address VARCHAR(20) NOT NULL,
cust_city VARCHAR(12) NOT NULL,
cust_sτate VARCHAR(2) NOT NULL,
cust_zip VARCHAR(5) NOT NULL,
cust_phone VARCHAR(10),
cust_fax VARCHAR(10)
);

describe products_tbl;
-- 第四题
--编写一个 SELECT 语旬，返回价格小于1.00 或大于 12.50 的产品 执行计划 花费是3 OPTIONS：FULL
SELECT * FROM products_tbl WHERE COST<1.00 OR COST>12.5;
-- NOT IN 执行计划 花费7 OPTIONS: ANTI
SELECT * FROM products_tbl WHERE COST NOT IN(SELECT COST FROM products_tbl WHERE COST>=1.00 AND COST<=12.5 );

-- 第五题
SELECT  prod_desc, COST, COST*0.05 AS salerate FROM products_tbl ORDER BY COST DESC;

-- 第6题
SELECT  prod_desc, COST, COST*0.05 AS salerate, COST*0.05+cost AS addcost  FROM products_tbl ORDER BY COST DESC;
SELECT  prod_desc, COST, COST*0.05 AS salerate, COST*1.05 AS addcost  FROM products_tbl ORDER BY COST DESC;

-- 第七题
SELECT * FROM products_tbl WHERE prod_id='6' OR prod_id='9' OR prod_id='13';
SELECT * FROM products_tbl WHERE prod_id !='6' AND prod_id !='9' AND prod_id !='13';

-- 第八题
SELECT * FROM products_tbl WHERE prod_id IN（'6','9','13'）;
SELECT * FROM products_tbl WHERE prod_id NOT IN（'6','9','13'）;

-- 第九题
SELECT * FROM products_tbl WHERE prod_desc  LIKE 'P%';
SELECT * FROM products_tbl WHERE prod_desc not LIKE 'P%'; 


