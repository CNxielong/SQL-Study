-- 2018-12-12 xielong �޸����ݿ�����ʱЧ --

-- �鿴Oracle���ݿ��û���Ϣ���� --
Select username,PROFILE FROM dba_users;

-- �鿴ָ����Ҫ�ļ�����default����������Ч�����ã� --
Select * FROM dba_profiles s Where s.profile='DEFAULT' AND resource_name='PASSWORD_LIFE_TIME'; 

-- ��������Ч����Ĭ�ϵ�180���޸ĳɡ������ơ���
Alter PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED; 
-- �Ѿ�����ʾ������ڵ��û���Ҫ���޸����� ����xielong���û��� 1123456������ �˴�Ҫ�ĳ����Լ����ݿ���û��������� --
Alter user xielong identified by 123456;