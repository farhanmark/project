-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-04-22 12:57:57 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE NL_active_emp CASCADE CONSTRAINTS ;

DROP TABLE NL_division CASCADE CONSTRAINTS ;

DROP TABLE NL_file CASCADE CONSTRAINTS ;

DROP TABLE NL_list CASCADE CONSTRAINTS ;

DROP TABLE NL_member CASCADE CONSTRAINTS ;

DROP TABLE NL_membership CASCADE CONSTRAINTS ;

CREATE TABLE NL_active_emp
  (
    employee_id         INTEGER NOT NULL ,
    first_name          VARCHAR2 (255) ,
    middle_name         VARCHAR2 (255) ,
    last_name           VARCHAR2 (255) ,
    lab                 VARCHAR2 (255) ,
    division            VARCHAR2 (255) ,
    isStdUser           VARCHAR2 (255) ,
    isAdmin             VARCHAR2 (255) ,
    network_act_id      INTEGER ,
    status              VARCHAR2 (255) ,
    status_eff_date     DATE ,
    NL_member_member_id INTEGER
  ) ;
CREATE UNIQUE INDEX NL_active_emp__IDX ON NL_active_emp
  (
    NL_member_member_id ASC
  )
  ;
  ALTER TABLE NL_active_emp ADD CONSTRAINT NL_active_emp_PK PRIMARY KEY ( employee_id ) ;

CREATE TABLE NL_division
  (
    div_code VARCHAR2 (255) NOT NULL ,
    lab_code VARCHAR2 (255)
  ) ;
ALTER TABLE NL_division ADD CONSTRAINT NL_division_PK PRIMARY KEY ( div_code ) ;

CREATE TABLE NL_file
  (
    file_id                   INTEGER NOT NULL ,
    NL_active_emp_employee_id INTEGER ,
    filename                  VARCHAR2 (255) ,
    comments                  VARCHAR2 (4000) ,
    tag                       VARCHAR2 (255) ,
    file_size                 INTEGER ,
    char_set                  VARCHAR2 (255) ,
    mimetype                  VARCHAR2 (255) ,
    file_data BLOB
  ) ;
ALTER TABLE NL_file ADD CONSTRAINT NL_file_PK PRIMARY KEY ( file_id ) ;

CREATE TABLE NL_list
  (
    list_seq_id               INTEGER NOT NULL ,
    list_name                 VARCHAR2 (40) ,
    ownership_div_code        VARCHAR2 (4) ,
    list_description          VARCHAR2 (3500) ,
    external_view_name        VARCHAR2 (50) ,
    list_status               VARCHAR2 (1) ,
    status_eff_date           DATE ,
    NL_active_emp_employee_id INTEGER ,
    NL_member_member_id       INTEGER
  ) ;
CREATE UNIQUE INDEX NL_list__IDX ON NL_list
  (
    NL_member_member_id ASC
  )
  ;
  ALTER TABLE NL_list ADD CONSTRAINT NL_list_PK PRIMARY KEY ( list_seq_id ) ;

CREATE TABLE NL_member
  (
    member_id                 INTEGER NOT NULL ,
    type                      VARCHAR2 (255) ,
    NL_active_emp_employee_id INTEGER ,
    NL_list_list_seq_id       INTEGER
  ) ;
CREATE UNIQUE INDEX NL_member__IDX ON NL_member
  (
    NL_active_emp_employee_id ASC
  )
  ;
CREATE UNIQUE INDEX NL_member__IDXv1 ON NL_member
  (
    NL_list_list_seq_id ASC
  )
  ;
  ALTER TABLE NL_member ADD CONSTRAINT NL_member_PK PRIMARY KEY ( member_id ) ;

CREATE TABLE NL_membership
  (
    membership_id       INTEGER NOT NULL ,
    NL_member_member_id INTEGER ,
    NL_list_list_seq_id INTEGER
  ) ;
ALTER TABLE NL_membership ADD CONSTRAINT NL_membership_PK PRIMARY KEY ( membership_id ) ;

ALTER TABLE NL_active_emp ADD CONSTRAINT NL_active_emp_NL_member_FK FOREIGN KEY ( NL_member_member_id ) REFERENCES NL_member ( member_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_file ADD CONSTRAINT NL_file_NL_active_emp_FK FOREIGN KEY ( NL_active_emp_employee_id ) REFERENCES NL_active_emp ( employee_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_list ADD CONSTRAINT NL_list_NL_active_emp_FK FOREIGN KEY ( NL_active_emp_employee_id ) REFERENCES NL_active_emp ( employee_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_list ADD CONSTRAINT NL_list_NL_member_FK FOREIGN KEY ( NL_member_member_id ) REFERENCES NL_member ( member_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_member ADD CONSTRAINT NL_member_NL_active_emp_FK FOREIGN KEY ( NL_active_emp_employee_id ) REFERENCES NL_active_emp ( employee_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_member ADD CONSTRAINT NL_member_NL_list_FK FOREIGN KEY ( NL_list_list_seq_id ) REFERENCES NL_list ( list_seq_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_membership ADD CONSTRAINT NL_membership_NL_list_FK FOREIGN KEY ( NL_list_list_seq_id ) REFERENCES NL_list ( list_seq_id ) ON
DELETE CASCADE ;

ALTER TABLE NL_membership ADD CONSTRAINT NL_membership_NL_member_FK FOREIGN KEY ( NL_member_member_id ) REFERENCES NL_member ( member_id ) ON
DELETE CASCADE ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             4
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
