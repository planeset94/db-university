-- GROUP BY:
-- Contare quanti iscritti ci sono stati ogni anno
1) SELECT COUNT(*) AS "Numero iscritti nell'anno" , YEAR(enrolment_date) AS "Anno_di_iscrizione"
    FROM students   
    GROUP BY Anno_di_iscrizione;
-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
2) SELECT COUNT(*) AS "Numeri insegnanti", office_address AS "Edificio"
    FROM teachers
    GROUP BY Edificio;

-- Calcolare la media dei voti di ogni appello d'esame
3) SELECT exam_id, AVG(vote) as "Media_Voti"
    FROM exam_student
    GROUP BY exam_id;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
4) SELECT department_id, COUNT(id)
    FROM degrees
    GROUP BY  department_id;

-- JOINS:
-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
1) SELECT students.name, students.surname, students.fiscal_code, degrees.name
    FROM students
    JOIN degrees
    ON students.degree_id= degrees.id
    WHERE degrees.name= "Corso di Laurea in Economia";

-- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
2) SELECT degrees.name, degrees.level, degrees.website, degrees.email, degrees.id AS "Codice facoltà", departments.name
    FROM degrees
    JOIN departments
    ON degrees.department_id = departments.id
    WHERE departments.name="Dipartimento di Neuroscienze"

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
3) SELECT teachers.id As "Codice Docente",teachers.name As "Nome Docente", 	teachers.surname	As "Cognome docente",courses.id AS "Codice Corso",courses.name AS "Nome Corso", courses.description, courses.period, courses.year, courses.cfu
    FROM course_teacher
    JOIN courses
    ON course_teacher.course_id= courses.id
    JOIN teachers
    ON course_teacher.teacher_id= teachers.id
    WHERE course_teacher.teacher_id=44;
-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti 
-- e il relativo dipartimento, in ordine alfabetico per cognome e nome
4) SELECT students.name As "Nome studente", students.surname As "Cognome studente", degrees.name AS "Nome Facoltà", degrees.level, degrees.address, degrees.email, degrees.website, departments.name AS "Dipartimento" 
    FROM students 
    JOIN degrees 
    ON students.degree_id=degrees.id 
    JOIN departments 
    ON degrees.department_id= departments.id 
    ORDER BY `Nome studente`,`Cognome studente` ASC;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
5) SELECT degrees.name AS "Facoltà" , courses.name AS "Corsi" , teachers.name AS "Docenti"
    FROM courses
    JOIN degrees 
    ON courses.degree_id=degrees.id
    JOIN course_teacher
    ON courses.id=course_teacher.course_id
    JOIN teachers
    ON course_teacher.teacher_id= teachers.id
    ORDER BY `Facoltà` ASC;

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (5)
6) SELECT teachers.surname AS "Docente", courses.name AS "Corso", departments.name AS "Dipartimento"
    FROM teachers
    JOIN course_teacher
    ON teachers.id=course_teacher.teacher_id
    JOIN courses
    ON course_teacher.course_id=courses.id
    JOIN degrees
    ON courses.degree_id=degrees.id
    JOIN departments
    ON degrees.department_id=departments.id
    WHERE departments.id=5;

-- BONUS
-- Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami

SELECT COUNT(courses.name) AS 'tentativi', students.name AS 'student_name', students.surname AS 'student_surname' , courses.name AS 'course_name' 
FROM exam_student 
JOIN exams 
ON exam_student.exam_id = exams.id 
JOIN students 
ON exam_student.student_id = students.id 
JOIN courses 
ON exams.course_id = courses.id 
GROUP BY students.id, courses.name