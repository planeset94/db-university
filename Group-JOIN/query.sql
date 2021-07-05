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
3) 

