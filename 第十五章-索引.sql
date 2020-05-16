
-- FIRST_NAME 和 LAST_NAME 组合索引
-- 用到了索引 EMP_NAME_IX
select  * from EMPLOYEES where FIRST_NAME = '1' and LAST_NAME ='2';

-- 查询前导列   index range scan(索引范围扫描)： 
select  * from EMPLOYEES where LAST_NAME = '2';

-- 查询非前导列         index skip scan(跳跃式索引扫描)：
select  * from EMPLOYEES where FIRST_NAME = '1';
