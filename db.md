# universityDb

## department
- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- name              VARCHAR(50) INDEX NOTNULL
- director          VARCHAR(20) NULL
- desc              TEXT NOTNULL
- news              TEXT NULL

## faculty_of

- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- id_department     FK BIGINT  
- name              VARCHAR(50) INDEX NOTNULL
- headmaster        VARCHAR(20) NULL
- desc              TEXT NOTNULL


## course

- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- name              VARCHAR(30) NOTNULL
- teacher           VARCHAR(20) NULL
- desc              TEXT NOTNULL
- calendar          DATETIME NOTNULL

## teacher

- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- name              VARCHAR(20) INDEX NULL
- lname             VARCHAR(20) NULL

## student

- id                PK BIGINT AUTO_INCREMENT UNIQUE
- id_faculty        FK BIGINT   
- name              VARCHAR(20) NOTNULL
- lname             VARCHAR(20) NOTNULL
- fiscal_code       CHAR(16) UNIQUE NOTNULL
- VIN_number        CHAR (8) UNIQUE NOTNULL

## exam_session

- id              PK BIGINT AUTO_INCREMENT UNIQUE
- exam_name       VARCHAR(30) NOTNULL
- exam_code       CHAR(6) NOTNULL
- dates           DATETIME NOTNULL


## mark

- id              PK BIGINT AUTO_INCREMENT UNIQUE
- id_student      FK BIGINT NOTNULL
- student_name    VARCHAR(20) NULL
- student_lname   VARCHAR(20) NULL 
- VIN_number      CHAR(8) NOTNULL
- exam_name       VARCHAR(30) NOTNULL
- exam_code       CHAR(6) NOTNULL
- passed          TINYINT(1) NOTNULL
- grade           TINYINT NULL





