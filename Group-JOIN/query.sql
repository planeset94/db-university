-- GROUP BY:
-- Contare quanti iscritti ci sono stati ogni anno
1) SELECT COUNT(*) AS "Numero iscritti nell'anno" , YEAR(enrolment_date) AS "Anno_di_iscrizione"
    FROM students   
    GROUP BY Anno_di_iscrizione;
-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
2) SELECT COUNT(*) AS "Numeri insegnanti", office_address AS "Edificio"
    FROM teachers
    GROUP BY Edificio;

