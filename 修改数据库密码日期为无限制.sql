-- 2018-12-12 xielong 修改数据库密码时效 --

-- 查看Oracle数据库用户信息描述 --
Select username,PROFILE FROM dba_users;

-- 查看指定概要文件（如default）的密码有效期设置： --
Select * FROM dba_profiles s Where s.profile='DEFAULT' AND resource_name='PASSWORD_LIFE_TIME'; 

-- 将密码有效期由默认的180天修改成“无限制”：
Alter PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED; 
-- 已经被提示密码过期的用户需要重修改密码 其中xielong是用户名 1123456是密码 此处要改成你自己数据库的用户名和密码 --
Alter user xielong identified by 123456;