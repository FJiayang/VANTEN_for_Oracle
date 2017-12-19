--------------------------------------------------------
--  �ļ��Ѵ��� - ���ڶ�-ʮ����-19-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINISTRATOR_JOB
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."ADMINISTRATOR_JOB" 
   (	"ADMINJOB" VARCHAR2(20 BYTE), 
	"ADMINDUTY" VARCHAR2(600 BYTE) DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table ADMINSTRATOR_RECORD
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."ADMINSTRATOR_RECORD" 
   (	"ADMINNO" CHAR(12 BYTE), 
	"ADMINNAME" VARCHAR2(20 BYTE), 
	"ADMINSEX" CHAR(4 BYTE), 
	"ADMINJOB" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table COUNTER
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."COUNTER" 
   (	"VISITCOUNT" NUMBER(11,0) DEFAULT '0'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table IPLIST
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."IPLIST" 
   (	"IP" VARCHAR2(30 BYTE), 
	"COL_TIMES" VARCHAR2(30 BYTE) DEFAULT NULL, 
	"USERNAME" VARCHAR2(20 BYTE) DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table TB_COMMENT
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."TB_COMMENT" 
   (	"COL_COMMENTID" NUMBER(11,0), 
	"COL_COMMENT" VARCHAR2(255 BYTE), 
	"COL_USERNAME" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COL_TIME" DATE DEFAULT NULL, 
	"COL_SUBID" NUMBER(11,0) DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table TB_DOCFILE
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."TB_DOCFILE" 
   (	"EMPID" NUMBER(11,0), 
	"EMPJOB" VARCHAR2(50 BYTE), 
	"EMPNAME" VARCHAR2(20 BYTE), 
	"EMPSEX" VARCHAR2(4 BYTE), 
	"EMPNATION" VARCHAR2(40 BYTE), 
	"EMPNATIVE" VARCHAR2(40 BYTE), 
	"EMPSCHOOL" VARCHAR2(40 BYTE), 
	"EMPDEPT" VARCHAR2(40 BYTE), 
	"EMPMAJOR" VARCHAR2(40 BYTE), 
	"EMPBIRTHDAY" VARCHAR2(40 BYTE), 
	"EMPQQ" VARCHAR2(40 BYTE), 
	"EMPEMAIL" VARCHAR2(80 BYTE), 
	"EMPPHONENUM" VARCHAR2(40 BYTE), 
	"EMPADRESS" VARCHAR2(255 BYTE), 
	"EMPRESUME" VARCHAR2(600 BYTE), 
	"EMPREMARK" VARCHAR2(600 BYTE), 
	"EDI_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table TB_NEWS
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."TB_NEWS" 
   (	"NEWSID" NUMBER(11,0), 
	"NEWTITLE" VARCHAR2(80 BYTE) DEFAULT NULL, 
	"NEWSTEXT" VARCHAR2(600 BYTE), 
	"NEWSFROM" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"ADDTIME" TIMESTAMP (4) DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table TB_SEND
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."TB_SEND" 
   (	"COL_ID" NUMBER(37,0), 
	"COL_SUBJECT" VARCHAR2(255 BYTE), 
	"COL_CONTENT" VARCHAR2(255 BYTE), 
	"COL_FLAG" NUMBER(11,0) DEFAULT 0, 
	"COL_USERNAME" VARCHAR2(255 BYTE) DEFAULT NULL, 
	"COL_TIME" DATE, 
	"COL_UPDATETIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table TB_USER
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."TB_USER" 
   (	"USERNAME" VARCHAR2(60 BYTE), 
	"PASSWORD" VARCHAR2(60 BYTE) DEFAULT NULL, 
	"EMAIL" VARCHAR2(60 BYTE) DEFAULT NULL, 
	"PHONENUM" CHAR(18 BYTE) DEFAULT NULL, 
	"VIP" NUMBER(4,0) DEFAULT 0, 
	"ADMINISTRATOR" NUMBER(4,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
--------------------------------------------------------
--  DDL for Table X2_RESOURSE
--------------------------------------------------------

  CREATE TABLE "C##ROOT"."X2_RESOURSE" 
   (	"COL_RESNAME" VARCHAR2(100 BYTE), 
	"COL_SIZE" VARCHAR2(30 BYTE), 
	"COL_UPLOADTIME" DATE, 
	"COL_DOWNLOADTIMES" NUMBER(11,0) DEFAULT 0, 
	"COL_LINK" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB_SCHOOL" ;
REM INSERTING into C##ROOT.ADMINISTRATOR_JOB
SET DEFINE OFF;
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('��Ŀ����',' ��Ŀ������Ϊ��Ŀ�ĳɹ��߻���ִ�и�������ˣ������������������ʵĹ�������������Ŀʵ����������ȫ�����ȡ��ɱ���������α�֤��ȫ�������Ŀ����ˮƽ��Ҳ�ɳ�Ϊ��ִ�������ˡ�����Ŀ��������Ŀ�Ŷӵ��쵼�ߣ���Ŀ������Ҫְ������Ԥ�㷶Χ�ڰ�ʱ���ʵ��쵼��ĿС�����ȫ����Ŀ�������ݣ���ʹ�ͻ����⡣');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('�ĵ�����Ա','���𱾹�˾���ļ��ռ����鵵��������ͳһ�������鵵����ά�������������밲ȫ�����Ǿ��в鿼�����ֵ�ı����ŵ��շ��ļ����ڲ�ʹ������ͻ����¼�Ⱦ�Ϊ�ռ���Χ��Ӧ�鵵��ʱ���������򣻸����ճ��ı��������ļ��ȵķ����Լ����չ鵵���ܣ���֤�������鵵������������ȫ�����ķ��㣻�ϸ�Ѻ��ļ��շ��Ǽǹأ�����������׼ȷ�������ļ������ࡣ');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('���з���Ա','�������ʦ�Ǿ߱���ǿ�ĵ����о����ۺ������������������ѯרҵ��Ա���������ö��ԺͶ������鷽�����ռ��й���Ϣ���������ݴ���ͷ������γɱ����Թ��ͻ����߲ο�����Ҫ����������ȷ��������Ŀ����Ƶ��鷽�����Ѽ��й���Ϣ���ϣ���Ƶ����ʾ����г�����ƣ�ָ������ѵ����Ա������Ԥ���飻��֯ʵʩʵ�ص��飻�������ݴ���ͷ�����׫д����������棻�������γɵ����������ȡ�');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('ϵͳ����Ա','�����û�������С�����ϵͳ��ϵ�ṹ�����ܡ����ܵķ�����������ƹ�����������Ŀ�Ŀ������̹���������Ŀ�ļƻ��������������������벢ָ����������ʦ���ϵͳ��ϸ��ƺͿ��������������Ӧҵ�񡢼������⣻��������û��ֲᡢЭ���ͻ���ϵͳ�����Ӳ��ƽ̨�İ�װʵʩ�������ƶ���Ŀ�ĵ���ʽ����д��Ŀ����淶Ҫ�������ĵ���');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('ģ�����Ա','ģ�����Աʵ���Ͼ�����վ��������ƣ��ǿͻ�����Ϳ�����֮��������������������֪����վ��ģʽ����Ӫ˼·���û�Ⱥ��ʹ��ϰ�ߡ���վ�Ĺ��ܵȵȻ��ڣ���վ�ܹ�ˮƽ�ĸߵ;�������վ���������ܺ���Ӫģʽ��ʱЧ�Ժ;����ԡ�ģ�����Աͨ�����ɾ���ḻ�����ݿ�������Ա�����Ρ�');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('����Ա','���������Ŀ����ϸ��ơ�������ڲ����Ե���֯ʵʩ��Э����Ŀ����������Աͬ�ͻ����й�ͨ���������õĿͻ���ϵ������������С���Ŀ�����Է��������������Է����������������Ϥ���������ս�������������������Ŀ����������������������Ŀ����ʱ������������е������������ʵ���������Ľ����飻�������������ά���������ش�������Ľ������������״ΰ�װ���ԡ����ݸ�ӡ��û���ѵ����Ŀ�ƹ㡣');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('�������Ա',' ��������ҵϰ���ϳ�Ϊ��վ��������վ��ơ���Ҫ�����ǣ�������ҳ�����������ơ����⹤�����������������ݸ��������վ���û�Ⱥ�������˼��ӱ���и߶��������Ĵ�����ƣ���ҳ������Ż���ʹ�û��������������Ի����ռ��ͷ����û��������µ�����');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('���Թ���ʦ','��д���Լƻ����滮��ϸ�Ĳ��Է�������д�������������ݲ��Լƻ����ά�����Ի�����ִ�в��Թ������ύ���Ա��档������д���ڲ��Ե��Զ����Խű��������ؼ�¼���Խ������д�����Ĳ��Ա������صļ����ĵ����Բ����з��ֵ����������ϸ������׼ȷ��λ���뿪����Ա����ȱ�ݽ������������Բ�Ʒ�Ľ�һ���Ľ��Ľ��飬�������Ľ������Ƿ�����Բ��Խ�������ܽ���ͳ�Ʒ������Բ��Խ��и��٣���������������');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('Ӳ������ʦ','���ռƻ���ɷ��Ϲ�������Ҫ���������׼��Ӳ����Ʒ��Ҫ����Ϥ������г����飻�ƶ��������װ�ƻ����ܹ�ѡ����װ��Ҫ��Ӳ���豸�����ܺ������á���װ���������Χ�豸����װ�����ü�������ϵͳ������Ӳ������Χ�豸�������������ֵļ������Ӳ�����ϡ�');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('���ݿ����Ա',' ������ݿ���ƣ������ֶΡ���͹ؼ��ֶΣ����Ӽ�����ݿ�ľ�����־������������ɾ�����淶���ݿ��û��Ĺ����ڶԹ���Ա����Ҫ�û���������޸ģ����ݿ����Ա�涨�û�����Ȩ�޺�Ϊ��ͬ�û��������Դ�����ݿ����Ա�ܹ�Ϊ��ͬ�����ݿ����ϵͳ�û��涨��ͬ�ķ���Ȩ�ޣ��Ա������ݿⲻ��δ����Ȩ�ķ��ʺ��ƻ���');
Insert into C##ROOT.ADMINISTRATOR_JOB (ADMINJOB,ADMINDUTY) values ('�ͻ�����Ա','  �ͻ�����Ա��ָ���¿ͻ����˿��빫˾����λ����֮����й�ͨ��������Ϣ������Э������Ա����Ҫ�����У���ʱ���������ʿͻ�����������ʱ��棬�ϱ����۲��������ݷ��ʽ����Э�������ͻ����Ͽ⣻����ͻ�������ϵ����ͻ�����������ϵ�������ͻ��������Ǳ�ڿͻ����з��ʣ���������ñ��沢�ϱ���');
REM INSERTING into C##ROOT.ADMINSTRATOR_RECORD
SET DEFINE OFF;
Insert into C##ROOT.ADMINSTRATOR_RECORD (ADMINNO,ADMINNAME,ADMINSEX,ADMINJOB) values ('15251101205 ','��ѩ��','Ů ','���з���Ա');
Insert into C##ROOT.ADMINSTRATOR_RECORD (ADMINNO,ADMINNAME,ADMINSEX,ADMINJOB) values ('15251101219 ','������','�� ','ģ�����Ա');
Insert into C##ROOT.ADMINSTRATOR_RECORD (ADMINNO,ADMINNAME,ADMINSEX,ADMINJOB) values ('15251101208 ','Ī����','�� ','ģ�����Ա');
Insert into C##ROOT.ADMINSTRATOR_RECORD (ADMINNO,ADMINNAME,ADMINSEX,ADMINJOB) values ('15251101201 ','����','�� ','����Ա');
Insert into C##ROOT.ADMINSTRATOR_RECORD (ADMINNO,ADMINNAME,ADMINSEX,ADMINJOB) values ('15251101238 ','������','�� ','��Ŀ����');
REM INSERTING into C##ROOT.COUNTER
SET DEFINE OFF;
Insert into C##ROOT.COUNTER (VISITCOUNT) values (469);
REM INSERTING into C##ROOT.IPLIST
SET DEFINE OFF;
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 19:24:19','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-18 19:26:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-11-18 19:32:54','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-11-18 20:00:15','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-11-18 20:01:45','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-11-18 20:02:21','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-11-18 20:19:39','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 20:30:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 21:01:40','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-19 12:43:44','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-19 16:15:57','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-19 18:15:23','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-19 18:31:56','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-11-19 21:22:22','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-19 21:22:45','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-11-19 21:23:17','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-19 21:49:13','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-19 22:00:31','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-19 22:43:42','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-19 22:48:03','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-19 22:49:45','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-20 12:19:10','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-20 13:07:39','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 13:15:35','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('14.16.191.177','2017-11-20 13:23:25','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 13:26:33','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 14:27:15','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 14:29:54','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-20 15:13:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 15:24:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 16:11:10','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 16:41:40','FJY');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 16:52:33','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 18:13:07','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 18:13:36','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('112.97.57.57','2017-11-20 18:21:13','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('112.97.57.57','2017-11-20 18:21:56','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-20 18:23:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-20 18:44:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.125','2017-11-20 20:28:23','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.125','2017-11-20 20:30:15','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 23:04:17','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 23:11:32','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 23:22:11','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 23:27:25','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-20 23:39:19','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.46','2017-11-21 01:19:41','���˽�');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.46','2017-11-21 01:22:34','���˽�');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 07:43:31','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-21 07:44:35','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 08:20:49','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 08:34:02','FJY');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('183.6.91.67','2017-11-21 09:11:04','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 09:13:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 10:12:46','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 11:22:04','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 12:58:43','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-21 13:21:01','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 18:29:32','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 18:35:00','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 19:04:21','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 19:20:35','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 19:43:50','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 19:48:14','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 19:48:55','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-11-21 20:30:35','�ּ���');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 20:57:53','ojbk');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 20:59:30','ojbk');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 21:00:45','ojbk');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 21:04:36','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 21:05:01','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 21:05:44','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 21:06:52','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 21:07:27','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-21 23:19:19','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-22 00:01:28','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.18','2017-11-28 23:10:35','ѩ��');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-29 07:44:44','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-01 13:08:45','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-01 22:54:55','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-12-01 23:42:23','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-05 10:43:57','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-12-07 16:48:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-07 17:07:15','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-12-08 10:34:16','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-09 23:59:25','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-12-10 00:04:39','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-12-11 19:31:03','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 21:28:33','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.22.12.73','2017-12-13 21:33:37','��ѩ��');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 21:33:55','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:04:36','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:05:47','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:06:20','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:06:43','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:06:51','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:07:02','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:07:16','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:08:10','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:09:04','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:09:34','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.7','2017-12-13 22:20:59','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:34:02','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:40:19','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-12-13 22:40:30','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.18','2017-12-13 22:40:43','��ѩ��');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:53:36','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 23:03:35','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-12-18 22:39:40','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-12-18 23:13:03','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-12-18 23:15:30','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-12-19 10:40:11','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-28 23:17:02','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.18','2017-11-28 23:19:27','ѩ��');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-28 23:21:05','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-28 23:28:31','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-28 23:29:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.18','2017-11-28 23:35:10','ѩ��');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-29 16:20:35','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-29 16:21:44','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-29 18:31:07','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-29 20:21:29','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 21:42:05','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.22.12.73','2017-12-13 21:42:09','��ѩ��');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:11:32','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:14:01','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:14:39','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:15:12','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:15:31','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:15:48','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:18:28','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:20:55','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-28 20:21:34','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-04 12:45:14','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-07 18:20:34','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-10 08:37:55','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-10 11:15:57','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 21:52:57','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:03:01','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:03:47','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-13 22:18:08','Ī����');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-12-13 22:24:04','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-12-14 13:03:20','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-12-18 23:20:38','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-12-18 23:23:07','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.167.22','2017-12-18 23:28:33','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.232','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.232','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.232','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.232','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.232','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.232','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','0',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','Wed Oct 11 12:37:35 CST 2017',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-11 12:44:24',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-11 12:55:22',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-11 13:03:14',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-11 13:06:29',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-11 21:28:51',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-11 21:31:34',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-11 21:31:53',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-11 21:53:02',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-12 10:11:36',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-12 12:00:13',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-12 12:01:32',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-12 17:07:41',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-12 17:07:57',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-13 12:17:15',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:30:32',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:01',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:04',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:14',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:19',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:39',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:48',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.27','2017-10-13 12:31:50',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.4','2017-10-13 15:34:27',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.4','2017-10-13 15:36:05',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-13 21:00:31',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 21:49:05',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 21:59:11',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-13 21:59:36',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-13 22:01:27',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-13 22:01:52',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 22:05:02',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 22:05:58',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 22:06:53',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 22:10:11',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 22:47:19',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 22:52:45',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 23:04:33',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 23:09:04',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 23:10:26',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-13 23:19:01',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 23:21:43',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-13 23:22:21',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-13 23:23:02',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-13 23:28:47',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-13 23:30:22',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:40:13',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:44:29',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:47:34',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:48:11',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:50:00',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:50:30',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:50:53',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:51:22',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:51:49',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:52:31',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:52:57',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:54:51',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:57:08',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:57:50',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:58:19',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:58:53',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 17:59:38',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 18:00:21',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 18:00:53',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 18:01:21',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 18:04:47',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.35','2017-10-14 18:13:16',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:18:52',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:21:47',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:23:00',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:23:34',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:23:36',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:35:54',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:35:58',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:36:07',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:36:12',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:37:40',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:37:42',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:37:46',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:37:49',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:40:42',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:41:20',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:42:23',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:45:32',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:46:16',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:46:50',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:48:17',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:48:50',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:48:53',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:50:36',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:50:46',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:53:30',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 21:54:07',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 22:03:19',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-14 22:13:11',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-14 22:15:32',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-14 22:15:43',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-14 22:16:10',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 09:51:18',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 09:51:34',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 09:52:52',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 09:53:27',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 09:55:01',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 09:58:34',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:05:02',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:16:55',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:16:58',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:19:01',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:33:59',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:41:54',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:42:29',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:43:51',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:44:23',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:44:34',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:44:54',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-15 10:52:33',null);
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-19 22:06:08','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-23 22:46:50','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-23 22:48:01','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-23 22:58:51','???');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-23 23:00:03','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-23 23:04:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 08:54:12','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 09:11:28','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 09:11:39','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 09:12:57','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 11:55:08','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 15:02:38','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 15:16:17','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 18:51:21','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 19:12:22','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 20:28:34','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 20:50:43','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 20:55:23','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 20:58:13','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 20:58:42','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 21:46:06','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('192.168.1.172','2017-10-24 22:08:32','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 22:20:42','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-24 22:23:23','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 22:33:24','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-24 22:36:43','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-24 22:48:16','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 22:49:12','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.37','2017-10-24 22:58:18','���˽�');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-10-24 23:00:53','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 23:01:58','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-24 23:03:38','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-24 23:06:17','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-24 23:07:13','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-10-24 23:09:56','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-24 23:11:26','С�껨');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-24 23:11:49','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-24 23:12:16','С�껨');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.23','2017-10-24 23:12:43','�в���');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.37','2017-10-24 23:13:56','���˽�');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.23','2017-10-24 23:14:24','�в���');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-24 23:17:30','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.36','2017-10-24 23:20:00','С�껨');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-24 23:21:51','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-24 23:26:57','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-24 23:26:58','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-24 23:27:23','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-24 23:47:08','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-24 23:50:27','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-24 23:55:42','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-25 00:04:43','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 08:50:31','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 08:51:12','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 08:52:07','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 08:52:39','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 08:54:00','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 09:00:34','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 09:01:39','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 09:02:07','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 09:03:22','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 09:03:44','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 12:21:42','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 12:22:07','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-25 12:22:58','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 12:32:03','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-25 12:56:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-25 13:01:25','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 20:57:59','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 20:58:31','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:06:24','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:07:34','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:08:08','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:08:50','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:11:51','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:19:31','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:22:47','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:28:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:28:50','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:29:51','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 21:30:21','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:34:31','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:46:17','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:46:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:47:03','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:49:45','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:50:01','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:51:10','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 22:55:25','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 23:03:21','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-25 23:04:22','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-25 23:14:08','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-25 23:14:43','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-25 23:15:05','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-25 23:56:51','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-26 10:16:28','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 18:49:54','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-10-29 18:50:59','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 18:53:14','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.32','2017-10-29 18:59:05','mgq');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 19:06:49','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 19:17:23','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 19:27:18','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 19:56:09','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 19:58:19','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 19:59:30','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 20:03:57','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-29 20:06:26','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-29 20:09:33','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 20:15:04','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-29 22:07:57','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-29 22:23:07','ldn');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-29 22:27:54','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-29 22:29:50','ldnn');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-29 22:30:49','ldnn');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-29 23:11:33','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-10-29 23:32:25','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-29 23:35:31','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-29 23:38:44','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-29 23:40:47','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-30 07:21:32','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-30 13:27:04','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-30 14:38:38','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.29','2017-10-30 17:33:11','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.29','2017-10-30 17:33:28','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.29','2017-10-30 17:33:50','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.18.33.29','2017-10-30 17:34:37','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-30 21:19:15','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-30 21:52:04','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-10-30 22:20:23','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-30 22:33:40','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.8','2017-10-30 23:05:15','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-10-30 23:13:15','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-10-30 23:14:45','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:22:10','Ŀ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:28:01','Ŀ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:31:50','Ŀ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:38:13','�ּ���');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:39:16','�ּ���');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:41:06','Ŀ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.30','2017-10-30 23:44:04','Ŀ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-10-31 07:28:28','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.22.6.71','2017-10-31 09:04:55','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.22.9.211','2017-10-31 11:43:38','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-01 18:45:53','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-01 18:52:18','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-01 19:09:17','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-01 19:09:25','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-02 12:38:02','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-02 12:43:03','FJY');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-02 12:52:26','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 12:10:30','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 12:15:43','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 12:53:58','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 12:55:01','FJY');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 13:00:07','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 13:08:28','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.19','2017-11-03 13:22:26','��SHIMIN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-03 13:23:49','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-03 13:42:35','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.19','2017-11-03 14:11:15','��SHIMIN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.8','2017-11-03 14:27:38','LDN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.198.19','2017-11-03 14:39:00','��SHIMIN');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.28.199.39','2017-11-03 15:01:45','���ാ');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.13','2017-11-03 21:43:48','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-03 21:47:27','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-03 23:12:07','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.25.152.26','2017-11-04 07:34:45','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('172.22.1.229','2017-11-04 10:14:51','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('127.0.0.1','2017-11-09 17:13:47','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-11 22:37:22','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-11 23:13:18','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-11 23:29:56','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-11 23:31:53','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-11 23:35:32','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-12 09:51:30','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-12 10:26:07','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-12 12:40:48','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-12 20:28:14','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-12 21:03:48','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-13 12:14:39','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-14 22:06:14','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 19:55:08','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 20:07:05','������');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 20:22:02','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 20:28:06','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 21:22:45','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 21:30:08','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 21:49:46','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 21:51:46','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 21:54:15','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 22:01:28','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 22:37:51','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 22:55:41','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 23:13:59','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-15 23:22:12','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 10:31:03','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 10:45:51','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 10:46:16','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 15:41:44','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 16:32:41','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 18:21:36','admin');
Insert into C##ROOT.IPLIST (IP,COL_TIMES,USERNAME) values ('0:0:0:0:0:0:0:1','2017-11-18 19:05:38','admin');
REM INSERTING into C##ROOT.TB_COMMENT
SET DEFINE OFF;
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (32,'������','admin',to_date('27-11��-17','DD-MON-RR'),25);
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (69,'1','admin',to_date('28-11��-17','DD-MON-RR'),25);
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (24,'1','������',to_date('12-11��-17','DD-MON-RR'),18);
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (29,'¬���ȣ����ാ�����Ű�飬������','admin',to_date('20-11��-17','DD-MON-RR'),23);
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (31,'���俣���¼���棬�����Ұ��','admin',to_date('20-11��-17','DD-MON-RR'),23);
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (32,'��������ʣ����','admin',to_date('20-11��-17','DD-MON-RR'),23);
Insert into C##ROOT.TB_COMMENT (COL_COMMENTID,COL_COMMENT,COL_USERNAME,COL_TIME,COL_SUBID) values (34,'����ʱ��','admin',to_date('20-11��-17','DD-MON-RR'),26);
REM INSERTING into C##ROOT.TB_DOCFILE
SET DEFINE OFF;
Insert into C##ROOT.TB_DOCFILE (EMPID,EMPJOB,EMPNAME,EMPSEX,EMPNATION,EMPNATIVE,EMPSCHOOL,EMPDEPT,EMPMAJOR,EMPBIRTHDAY,EMPQQ,EMPEMAIL,EMPPHONENUM,EMPADRESS,EMPRESUME,EMPREMARK,EDI_NAME) values (3,'����Ա','����','��','����','�㶫�Ƹ�','�㶫�ƾ���ѧ','��Ϣ','�Ź�','2000-07-12','962864309','962864309@qq.com','17520468642','�й�','����Ա','����Ա','mgq');
Insert into C##ROOT.TB_DOCFILE (EMPID,EMPJOB,EMPNAME,EMPSEX,EMPNATION,EMPNATIVE,EMPSCHOOL,EMPDEPT,EMPMAJOR,EMPBIRTHDAY,EMPQQ,EMPEMAIL,EMPPHONENUM,EMPADRESS,EMPRESUME,EMPREMARK,EDI_NAME) values (4,'���з���Ա','��ѩ��','Ů','��','�㶫ʡ������','�㶫�ƾ���ѧ','��ϢѧԺ','��Ϣ��������Ϣϵͳ','2017-12-13','1106407810','1106407810@qq.com','1','1','1','1','��ѩ��');
Insert into C##ROOT.TB_DOCFILE (EMPID,EMPJOB,EMPNAME,EMPSEX,EMPNATION,EMPNATIVE,EMPSCHOOL,EMPDEPT,EMPMAJOR,EMPBIRTHDAY,EMPQQ,EMPEMAIL,EMPPHONENUM,EMPADRESS,EMPRESUME,EMPREMARK,EDI_NAME) values (2,'ģ�����Ա','������','��','����','�㶫����','�㶫�ƾ���ѧ','��ϢѧԺ','��Ϣ��������Ϣϵͳ','1996/07/15','1013338945','1013338945@qq.com','13822476952','�㶫�����»�','����','����','������');
Insert into C##ROOT.TB_DOCFILE (EMPID,EMPJOB,EMPNAME,EMPSEX,EMPNATION,EMPNATIVE,EMPSCHOOL,EMPDEPT,EMPMAJOR,EMPBIRTHDAY,EMPQQ,EMPEMAIL,EMPPHONENUM,EMPADRESS,EMPRESUME,EMPREMARK,EDI_NAME) values (1,'��Ŀ����','������','��','��','��Դ','�㶫�ƾ���ѧ','��ϢѧԺ','��Ϣ��������Ϣϵͳ',null,'1186032234','fjy8018@gmail.com','13536292949','�㶫�ƾ���ѧ25��','����','����','admin');
REM INSERTING into C##ROOT.TB_NEWS
SET DEFINE OFF;
Insert into C##ROOT.TB_NEWS (NEWSID,NEWTITLE,NEWSTEXT,NEWSFROM,ADDTIME) values (4,'��վ������������֧������ֱ�ӷ��ʣ�','�Ƽ�ʹ���������ʣ��ٶȸ���\r\nhttp://172.25.152.8:8087/xz1_v1.1/index.html\r\n\r\nʹ����������������������µ�ַ\r\nhttp://myserver8018.free.ngrok.cc/xz1_v1.1/index.html','admin',to_timestamp('20-11��-17 07.25.04.000000000 ����','DD-MON-RR HH.MI.SSXFF AM'));
Insert into C##ROOT.TB_NEWS (NEWSID,NEWTITLE,NEWSTEXT,NEWSFROM,ADDTIME) values (5,'���ڸ��µ�����','1����̳��飬���ö���ɾ���������������  2����������۴�ģ����ҿ��Է����������  3����ӹ�������Ű��  4����Ӹ��˵���������','admin',to_timestamp('20-11��-17 07.27.08.000000000 ����','DD-MON-RR HH.MI.SSXFF AM'));
Insert into C##ROOT.TB_NEWS (NEWSID,NEWTITLE,NEWSTEXT,NEWSFROM,ADDTIME) values (6,'���λ���찴�����²�����в���','�Ŷ�����-��Ӹ��˵���-��д��Ϣ','admin',to_timestamp('20-11��-17 07.28.11.000000000 ����','DD-MON-RR HH.MI.SSXFF AM'));
REM INSERTING into C##ROOT.TB_SEND
SET DEFINE OFF;
Insert into C##ROOT.TB_SEND (COL_ID,COL_SUBJECT,COL_CONTENT,COL_FLAG,COL_USERNAME,COL_TIME,COL_UPDATETIME) values (18,'������','emmm',0,'������',to_date('12-11��-17','DD-MON-RR'),to_date('28-11��-17','DD-MON-RR'));
Insert into C##ROOT.TB_SEND (COL_ID,COL_SUBJECT,COL_CONTENT,COL_FLAG,COL_USERNAME,COL_TIME,COL_UPDATETIME) values (24,'����ռ���','�����ʲô����ͽ���ֱ������������ͺ�',1,'admin',to_date('20-11��-17','DD-MON-RR'),to_date('28-11��-17','DD-MON-RR'));
Insert into C##ROOT.TB_SEND (COL_ID,COL_SUBJECT,COL_CONTENT,COL_FLAG,COL_USERNAME,COL_TIME,COL_UPDATETIME) values (25,'����վ�ٴ��ȶ����У���ͨ����������','���������ģ��Լ��ڶ࿪����Ա��Ŭ�������Ǹ����������ң���̳�����ţ����棬�����Ȱ�飬����������������������ͨ��������������',0,'admin',to_date('20-11��-17','DD-MON-RR'),to_date('19-12��-17','DD-MON-RR'));
Insert into C##ROOT.TB_SEND (COL_ID,COL_SUBJECT,COL_CONTENT,COL_FLAG,COL_USERNAME,COL_TIME,COL_UPDATETIME) values (26,'�����ҵ�����','����',0,'������',to_date('20-11��-17','DD-MON-RR'),to_date('20-11��-17','DD-MON-RR'));
REM INSERTING into C##ROOT.TB_USER
SET DEFINE OFF;
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('ѩ��','wxy123','1106407810@qq.com','13129397778       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('vanten123','a123123','1@qq.com','11111111111       ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('15251101125','abc123','122222@qq.com','11111111111       ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('??','q1w2e3r4','759619758@qq.com','18920732796       ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('???','15251101216','651231290@qq.com','13288310358       ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('test','123456abc','1234@qq.com','123456778         ',0,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('��ѩ��','a123456','1106407810@qq.com','1                 ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('?ShiMIN','123456','123123','12580             ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('FJY','12345','12345@qq.com','12345678          ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('LDN','wing961029','854461803@qq.com','13168325028       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('admin','0000','root@gmail.com','1234567890        ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('fjy','123','1234@qq.com','123               ',0,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('ldnn','wing961029','854461803@qq.com','13168325028       ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('mgq','1234','123@qq.com','125643            ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('ojbk','123','ojbk@163.com','123456            ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('zero','1234321q','5555@qq','135               ',0,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('���˽�','q1w2e3r4','759619758@qq.com','18920732796       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('С�껨','123asd','651231290@qq.com','13288310358       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('�в���','123456','yoyo.dyut.gtde@qq.com','18718985745       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('��SHIMIN','a123456','123456789@qq.com','12580             ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('�ּ���','1234321','526126074@qq.com','123               ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('��','zsadxc123','526126074@qq.com','13650728232       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('Ŀ','12321q','526126074@qq.com','13650728232       ',0,0);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('������','5805018','1186032234@qq.com','13534466781       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('���ാ','a123','515895485@qq.com','13118855108       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('�±�ŵ','LUSH632%%','1286070934@qq.com','13650728540       ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('������','123456jian','1013338945@qq.com','138224769552      ',1,1);
Insert into C##ROOT.TB_USER (USERNAME,PASSWORD,EMAIL,PHONENUM,VIP,ADMINISTRATOR) values ('Ī����','123','123@qq.com','123456789         ',1,1);
REM INSERTING into C##ROOT.X2_RESOURSE
SET DEFINE OFF;
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('ReadMe.txt','1KB',to_date('09-10��-17','DD-MON-RR'),0,'resource/ReadMe.txt');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('linux.x64_11gR2_database_1of2','1.15GB',to_date('09-10��-17','DD-MON-RR'),0,'resource/linux.x64_11gR2_database_1of2.zip');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('linux.x64_11gR2_database_2of2','1.03GB',to_date('09-10��-17','DD-MON-RR'),0,'resource/linux.x64_11gR2_database_2of2.zip');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('XPϵͳ����','601MB',to_date('09-10��-17','DD-MON-RR'),0,'resource/zh-hans_windows_xp_professional_with_service_pack_3_x86_cd_x14-80404.iso');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('���Ͼ糡��21 �ƺ������','1019M',to_date('10-10��-17','DD-MON-RR'),0,'resource/[WMSUB][Detective Conan][Movie_21_ka ra ku re na i no love letter][BDRIP][GB][720P].mp4');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('MySQL+PHP���˰�','209MB',to_date('11-10��-17','DD-MON-RR'),0,'resource/wampserver3.0.6_x64_apache2.4.23_mysql5.7.14_php5.6.25-7.0.10.exe');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('���Ͼ糡��21 �ƺ������1080P��ˮӡ','1.92G',to_date('11-10��-17','DD-MON-RR'),0,'resource/[WMSUB][Detective Conan][Movie_21_ka ra ku re na i no love letter][BDRIP][GB][1080P].mp4');
Insert into C##ROOT.X2_RESOURSE (COL_RESNAME,COL_SIZE,COL_UPLOADTIME,COL_DOWNLOADTIMES,COL_LINK) values ('CentOS','4.21G',to_date('11-10��-17','DD-MON-RR'),0,'resource/CentOS-7-x86_64-DVD-1708.iso');
--------------------------------------------------------
--  Constraints for Table ADMINISTRATOR_JOB
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."ADMINISTRATOR_JOB" MODIFY ("ADMINJOB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMINSTRATOR_RECORD
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."ADMINSTRATOR_RECORD" MODIFY ("ADMINNO" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."ADMINSTRATOR_RECORD" MODIFY ("ADMINNAME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."ADMINSTRATOR_RECORD" MODIFY ("ADMINSEX" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."ADMINSTRATOR_RECORD" MODIFY ("ADMINJOB" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COUNTER
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."COUNTER" MODIFY ("VISITCOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IPLIST
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."IPLIST" MODIFY ("IP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_COMMENT
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."TB_COMMENT" MODIFY ("COL_COMMENTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_DOCFILE
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPID" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPJOB" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPNAME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPSEX" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPNATION" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPNATIVE" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPSCHOOL" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPDEPT" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPMAJOR" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPQQ" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPEMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPPHONENUM" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPADRESS" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPRESUME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EMPREMARK" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_DOCFILE" MODIFY ("EDI_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_NEWS
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."TB_NEWS" MODIFY ("NEWSID" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_NEWS" MODIFY ("ADDTIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_SEND
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."TB_SEND" MODIFY ("COL_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_SEND" MODIFY ("COL_SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_SEND" MODIFY ("COL_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_SEND" MODIFY ("COL_TIME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_SEND" MODIFY ("COL_UPDATETIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_USER
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."TB_USER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_USER" MODIFY ("VIP" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."TB_USER" MODIFY ("ADMINISTRATOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table X2_RESOURSE
--------------------------------------------------------

  ALTER TABLE "C##ROOT"."X2_RESOURSE" MODIFY ("COL_RESNAME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."X2_RESOURSE" MODIFY ("COL_SIZE" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."X2_RESOURSE" MODIFY ("COL_UPLOADTIME" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."X2_RESOURSE" MODIFY ("COL_DOWNLOADTIMES" NOT NULL ENABLE);
  ALTER TABLE "C##ROOT"."X2_RESOURSE" MODIFY ("COL_LINK" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger ADMINJOB_SECURE1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##ROOT"."ADMINJOB_SECURE1" 
BEFORE INSERT OR UPDATE OR DELETE
ON ADMINISTRATOR_JOB
BEGIN
   IF to_char(SYSDATE,'DY')='������'
   THEN
   RAISE_APPLICATION_ERROR(-20600,'��������ĩ�޸ĸ�λ��Ŷ');
   END IF;
END;
/
ALTER TRIGGER "C##ROOT"."ADMINJOB_SECURE1" ENABLE;
