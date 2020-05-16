--20190724 SQL入门经典 第十四章 子查询

SELECT salary FROM employee_pay_tbl WHERE emp_id='311549902';

--select与子查询
select EP.PAY_RATE,E.EMP_ID,E.LAST_NAME,E.FIRST_NAME from EMPLOYEE_PAY_TBL EP,EMPLOYEE_TBL E where EP.SALARY >（SELECT SALARY from EMPLOYEE_PAY_TBL where EMP_ID='311549902'）; 

--select 和insert语句

--根据一个表新建一个表
CREATE TABLE rich_employees AS SELECT * FROM employee_tbl;
SELECT * FROM rich_employees;
truncate TABLE rich_employees;

INSERT INTO rich_employees
SELECT e.*
FROM employee_tbl e,
  employee_pay_tbl ep
WHERE ep.emp_id = e.emp_id
AND ep.pay_rate >(SELECT pay_rate FROM employee_pay_tbl WHERE emp_id='442346889');
commit;


--查询某员工时薪
SELECT PAY_RATE FROM EMPLOYEE_PAY_TBL 
WHERE
 EMP_ID='220984332';

--查询大于某员工时薪的薪资信息
SELECT e.*
FROM employee_tbl e,
  employee_pay_tbl ep
WHERE e.emp_id  = ep.emp_id
AND ep.pay_rate >
  (SELECT PAY_RATE FROM EMPLOYEE_PAY_TBL WHERE EMP_ID='220984332'
  );
  
  --查询购物超过10件商品的顾客姓名
  select * from ORDERS_TBL --CUSTOMER_TBL 

  