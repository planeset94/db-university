1) SELECT * 
    FROM `students` 
    WHERE `date_of_birth` 
    BETWEEN '1990-01-01' AND '1990-12-31';
2) SELECT * 
    FROM `courses` 
    WHERE `cfu` > 10 
    ORDER BY `cfu` ASC;
3)SELECT * 
    FROM `students` 
    WHERE YEAR(CURDATE()) - YEAR(`date_of_birth`) > 30;
4) SELECT * 
    FROM `courses` 
    WHERE `year`=1 
    AND `period`= 'I semestre';
5) SELECT * 
    FROM `exams` 
    WHERE `date`='2020-06-20' 
    AND `hour`>'14:00:00';
6) SELECT * 
    FROM `degrees` 
    WHERE `level`='magistrale';
-- Oppure 
6) SELECT * 
    FROM `degrees` 
    WHERE `name` 
    LIKE '%magistrale%';

7) SELECT COUNT(`id`) AS `Dipeartimenti`  
    FROM `departments`;
8) SELECT * 
    FROM `teachers` 
    WHERE `phone`IS NULL; 
-- Oppure 
8) SELECT COUNT(*) AS `insegnanti senza numero` 
    FROM `teachers` 
    WHERE `phone`IS NULL;