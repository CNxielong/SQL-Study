--2019-2-26 学习--

-- find --
SELECT *  FROM PRODUCTS_TBL;

-- create template table--
CREATE TABLE products_tbl_test AS SELECT *  FROM products_tbl ;

SELECT * FROM products_tbl_test;
-- remove table--
drop table products_tbl_test;

-- 新增联合主键--
ALTER TABLE PRODUCTS_TBL ADD CONSTRAINT PRODUCTS_PK PRIMARY KEY (PROD_ID , VEND_ID);

--唯一约束 UNIQUE--
CREATE TABLE EMPLOYEE_TBL_UNIQUE
  (
    EMP_ID      VARCHAR(9) NOT NULL,
    LAST_NAME   VARCHAR(15) NOT NULL,
    FIRST_NAME  VARCHAR(15) NOT NULL,
    MIDDLE_NAME VARCHAR(15),
    ADDRESS     VARCHAR(30) NOT NULL,
    CITY        VARCHAR(15) NOT NULL,
    STATE       CHAR(2) NOT NULL,
    ZIP         INTEGER NOT NULL,
    PHONE       CHAR(10) UNIQUE, --唯一约束--
    PAGER       CHAR(10),
    CONSTRAINT EMP_PK_UNIQUE PRIMARY KEY (EMP_ID)
  );
  
  -- 外键约束--
  CREATE TABLE EMPLOYEE_PAY_TST(
  EMP_ID    VARCHAR(9) NOT NULL,
  POSITION  VARCHAR2(15) NOT NULL,
  DATA_HIRE DATE  NULL,
  PAY_RATE  NUMBER(4,2) NOT NULL,
  DATE_LAST_RAISE   DATE  NULL,
  CONSTRAINT EMP_ID_PK FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE_TBL (EMP_ID)
  );
  
  --直接增加外键约束--
  alter table employee_pay_tbl add constraint id_fk foreign key(emp_id) references EMPLOYEE_TBL (EMP_ID);
  
  -- 检查约束
  CREATE TABLE employee_check_tst
  (EMP_ID CHAR(9) NOT NULL,
  EMP_NAME VARCHAR2(40) NOT NULL,
  EMP_ST_ADDR VARCHAR2(20) NOT NULL,
  EMP_CITY VARCHAR2(15) NOT NULL,
  EMP_ST  CHAR(2) NOT NULL,
  EMP_ZIP NUMBER(5) NOT NULL,
  EMP_PHONE NUMBER(10) NULL,
  EMP_PAGER NUMBER(10) NULL,
  PRIMARY KEY(EMP_ID),
  CONSTRAINT CHE_EMP_ZIP CHECK( (EMP_ZIP = '46234') ) --确保了输入到这个表里的全部雇员的 EMP_ZIP代码都是 "46234"
  );
  
  -- 删除约束
  ALTER TABLE employee_check_tst DROP CONSTRAINT CHE_EMP_ZIP;
  
  
  
  
  
  
  
  
  
  
  
  
  