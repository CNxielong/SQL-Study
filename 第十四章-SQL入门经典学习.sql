--20190724 SQL���ž��� ��ʮ���� �Ӳ�ѯ

SELECT salary FROM employee_pay_tbl WHERE emp_id='311549902';

--select���Ӳ�ѯ
select EP.PAY_RATE,E.EMP_ID,E.LAST_NAME,E.FIRST_NAME from EMPLOYEE_PAY_TBL EP,EMPLOYEE_TBL E where EP.SALARY >��SELECT SALARY from EMPLOYEE_PAY_TBL where EMP_ID='311549902'��; 

--select ��insert���

--����һ�����½�һ����
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


--��ѯĳԱ��ʱн
SELECT PAY_RATE FROM EMPLOYEE_PAY_TBL 
WHERE
 EMP_ID='220984332';

--��ѯ����ĳԱ��ʱн��н����Ϣ
SELECT e.*
FROM employee_tbl e,
  employee_pay_tbl ep
WHERE e.emp_id  = ep.emp_id
AND ep.pay_rate >
  (SELECT PAY_RATE FROM EMPLOYEE_PAY_TBL WHERE EMP_ID='220984332'
  );
  
  --��ѯ���ﳬ��10����Ʒ�Ĺ˿�����
  select * from ORDERS_TBL --CUSTOMER_TBL 

  