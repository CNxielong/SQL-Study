--DATE：2019-05-22  Author:谢龙 第十章SQL
select sum(salary) from employee_pay_tbl;

select sum(salary) from employee_pay_tbl group by salary;

SELECT CITY FROM EMPLOYEE_TBL;

SELECT CITY,COUNT(*) FROM EMPLOYEE_TBL GROUP BY CITY;

-- 内连接
SELECT CITY, ZIP,AVG(PAY_RATE),AVG(SALARY) FROM EMPLOYEE_TBL E INNER JOIN EMPLOYEE_PAY_TBL P
on E.EMP_ID=P.EMP_ID group by city,zip order by city,zip;

--使用 RULLUP分组
SELECT CITY, ZIP,AVG(PAY_RATE),AVG(SALARY) FROM EMPLOYEE_TBL E INNER JOIN EMPLOYEE_PAY_TBL P
on E.EMP_ID=P.EMP_ID group by ROLLUP(city,zip);


