--20190724 SQL���ž��� ��ʮ���� �Ӳ�ѯ

SELECT salary FROM employee_pay_tbl WHERE emp_id='311549902';

--select���Ӳ�ѯ
select ep.pay_rate,e.emp_id,e.last_name,e.first_name FROM employee_pay_tbl ep,employee_tbl e where ep.salary >��SELECT salary FROM employee_pay_tbl WHERE emp_id='311549902'�� 

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

SELECT * FROM rich_employees;
