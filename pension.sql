/* 
1.管理员信息表  nurAdmin
用户id id int(20) 主键自增
账号 adId  varchar（20）
密码 adPwd   varchar（20）
昵称 adName  varchar（20）
手机号 adTel   varchar（20）
*/

CREATE TABLE nurAdmin (
  id int(20) NOT NULL AUTO_INCREMENT,
  adId varchar(20),
  adPwd varchar(20),
  adName varchar(20),
  adTel varchar(20),
  PRIMARY KEY (id)
);

/*
2.护工信息表  nurEmp
账号 empId   varchar(20)主键
密码 empPwd      varchar2(20)
姓名 empName     varchar2（20）
手机号 empTel      varchar2（20）
*/

CREATE TABLE nurEmp (
  empId varchar(20) NOT NULL,
  empPwd varchar(20),
  empName varchar(20),
  empTel varchar(20),
  PRIMARY KEY (empId)
);

/*
3.房间类型表  type
类型编号 typeId  主键  number
类型名称 typeName     varchar（50）
*/

CREATE TABLE type (
  typeId int(11) NOT NULL,
  typeName varchar(50),
  PRIMARY KEY (typeId)
);

/*
4.在院状态表  nurState
状态码 nurStateId  主键  number
状态名 nurStateName     varchar（50）0在院、1转院、2死亡
*/

CREATE TABLE nurState (
  nurStateId int(11) NOT NULL,
  nurStateName varchar(50),
  PRIMARY KEY (nurStateId)
);

/*
5.费用状态表  costState
状态码 costStateId  主键  number
状态名 costStateName     varchar（50）0待缴费、1已缴费
*/

CREATE TABLE costState (
  costStateId int(11) NOT NULL,
  costStateName varchar(50),
  PRIMARY KEY (costStateId)
);

/*
6.房间状态表  roomState
状态码 roomStateId 主键  number
状态名 roomStateName    varchar（50）0无人、1有人
*/

CREATE TABLE roomState (
  roomStateId int(11) NOT NULL,
  roomStateName varchar(50),
  PRIMARY KEY (roomStateId)
);

/*
7.房间信息表  room
房间编号 roomId  主键  number
朝向 orientation    varchar（20）
楼层 floor         varchar（20）
价格 price         number
房间类型 typeId  外键（房间类型表主键）  number
房间状态 roomStateId  外键（房间状态表主键）number
*/

CREATE TABLE room (
  roomId int(11) NOT NULL,
  orientation varchar(20),
  floor varchar(20),
  price int(11),
  typeId int(11),
  roomStateId int(11),
  PRIMARY KEY (roomId),
  CONSTRAINT FK_typeId FOREIGN KEY (typeId) REFERENCES type(typeId),
  CONSTRAINT FK_roomStateId FOREIGN KEY (roomStateId) REFERENCES roomState(roomStateId)
);

/*
8.用户信息表（老人） nurUser
账号 uuid  主键   varchar（20）
密码 upwd       varchar（20）
姓名 uname      varchar（20）
年龄 uage        number
身高 uheight      number
体重 uweight      number
手机号 utel        varchar（20）
身份证 ucard       varchar（50）
联系人 contact      varchar（20）
联系人电话 contactTel varchar（20）
病史  history        long
房间编号 roomId  外键（房间信息表主键）number
在院状态 nurStateId  外键（在院状态表主键）number
护工账号 empId    外键（护工信息表主键）varchar（20）
*/

CREATE TABLE nurUser (
  uuid varchar(20) NOT NULL,
  upwd varchar(20),
  uname varchar(20),
  uage int(11),
  uheight int(11),
  uweight int(11),
  utel varchar(20),
  ucard varchar(50),
  contact varchar(20),
  contactTel varchar(20),
  history longtext,
  roomId int(11),
  nurStateId int(11),
  empId varchar(20),
  PRIMARY KEY (uuid),
  CONSTRAINT FK_roomId FOREIGN KEY (roomId) REFERENCES room(roomId),
  CONSTRAINT FK_nurStateId FOREIGN KEY (nurStateId) REFERENCES nurState(nurStateId),
  CONSTRAINT FK_empId FOREIGN KEY (empId) REFERENCES nurEmp(empId)
);

/*
9.健康档案表  healthfile
档案编号 fileId  主键 number
血压  bloodPressure  number
体温  temperature   number（3,1）
脉搏  pulse   number
不良事件 badEvent  long
记录时间 fileTime    varchar（50）
用户账号 uuid  外键（用户信息表主键）varchar（20）
*/

CREATE TABLE healthfile (
  fileId int(11) NOT NULL,
  bloodPressure int(11),
  temperature decimal(3,1),
  pulse int(11),
  badEvent longtext,
  fileTime varchar(50),
  uuid varchar(20),
  PRIMARY KEY (fileId),
  CONSTRAINT FK_uuid FOREIGN KEY (uuid) REFERENCES nurUser(uuid)
);

/*
10.入住记录表  record
记录编号 recordId  主键  number
入住日期 startDate   varchar（20）
到期日期 endDate    varchar（20）
用户编号 uid  外键（用户信息表主键）	varchar（20）
房间编号 roomId  外键（房间信息表主键）     number
费用状态 costStateId 外键（费用状态表主键）   number
*/

CREATE TABLE record (
  recordId int(11) NOT NULL,
  startDate varchar(20),
  endDate varchar(20),
  uid varchar(20),
  roomId int(11),
  costStateId int(11),
  PRIMARY KEY (recordId),
  CONSTRAINT FK_uid FOREIGN KEY (uid) REFERENCES nurUser(uuid),
  CONSTRAINT FK_croomId FOREIGN KEY (roomId) REFERENCES room(roomId),
  CONSTRAINT FK_costStateId FOREIGN KEY (costStateId) REFERENCES costState(costStateId)
);
