
-- FIRST_NAME �� LAST_NAME �������
-- �õ������� EMP_NAME_IX
select  * from EMPLOYEES where FIRST_NAME = '1' and LAST_NAME ='2';

-- ��ѯǰ����   index range scan(������Χɨ��)�� 
select  * from EMPLOYEES where LAST_NAME = '2';

-- ��ѯ��ǰ����         index skip scan(��Ծʽ����ɨ��)��
select  * from EMPLOYEES where FIRST_NAME = '1';
