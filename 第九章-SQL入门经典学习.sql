-- 20190501 第九章 汇总函数

-- count函数
--count字段不包含空值
SElECT COUNT(EMP_ID) FROM EMPLOYEE_PAY_TBL;

SELECT COUNT(salary) FROM EMPLOYEE_PAY_TBL;

SELECT COUNT( distinct salary) FROM EMPLOYEE_PAY_TBL;

--包含空值和重复数据
SELECT COUNT(*) FROM EMPLOYEE_PAY_TBL;

-- sum函数




