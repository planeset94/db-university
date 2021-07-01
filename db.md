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

## table_bridge-faculty

- id_faculty        BIGINT AUTO_INCREMENT UNIQUE 
- id_course         BIGINT AUTO_INCREMENT UNIQUE 


## course

- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- name              VARCHAR(50) NOTNULL
- teacher           VARCHAR(20) NULL
- desc              TEXT NOTNULL
- calendar          DATETIME NOTNULL

## table_bridge-teacher

- id_course
- id_teacher

## teacher

- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- name              VARCHAR(20) INDEX NULL
- lname             VARCHAR(20) NULL


## exam

- id                PK BIGINT AUTO_INCREMENT UNIQUE 
- id_course         FK BIGINT  
- exam_code         CHAR(6)
- exam_sessions     TINYINT NULL 
- dates             DATETIME NULL


## student

- id                PK BIGINT AUTO_INCREMENT UNIQUE
- id_department     FK BIGINT   
- name              VARCHAR(20) NOTNULL
- lname             VARCHAR(20) NOTNULL
- fiscal_code       CHAR(16) UNIQUE NOTNULL


## exam_session


Modellizzare la struttura di una tabella per memorizzare tutti i dati riguardanti una università:
- sono presenti diversi dipartimenti, ciascuno con i propri corsi di laurea;
- ogni corso di laurea è formato da diversi corsi;
- ogni corso può essere tenuto da diversi insegnanti e prevede più appelli d'esame;
- ogni studente è iscritto ad un corso di laurea;
- per ogni appello d'esame a cui lo studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente



