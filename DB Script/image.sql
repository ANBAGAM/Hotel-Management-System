--------------------------------------------------------
--  File created - Friday-May-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table IMAGETAB
--------------------------------------------------------

  CREATE TABLE "HR"."IMAGETAB" 
   (	"ID" NUMBER(*,0), 
	"IMAGE" BLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("IMAGE") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ;
REM INSERTING into HR.IMAGETAB
SET DEFINE OFF;
Insert into HR.IMAGETAB (ID) values (1);
Insert into HR.IMAGETAB (ID) values (2);
Insert into HR.IMAGETAB (ID) values (3);
Insert into HR.IMAGETAB (ID) values (4);
Insert into HR.IMAGETAB (ID) values (5);
Insert into HR.IMAGETAB (ID) values (6);
Insert into HR.IMAGETAB (ID) values (7);
Insert into HR.IMAGETAB (ID) values (8);
Insert into HR.IMAGETAB (ID) values (9);
Insert into HR.IMAGETAB (ID) values (10);
--------------------------------------------------------
--  DDL for Index SYS_C004196
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C004196" ON "HR"."IMAGETAB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table IMAGETAB
--------------------------------------------------------

  ALTER TABLE "HR"."IMAGETAB" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
