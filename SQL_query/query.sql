1) SELECT * FROM `students` WHERE `date_of_birth` BETWEEN '1990-01-01' AND '1990-12-31';
2) SELECT * FROM `courses` WHERE `cfu` > 10;
3)SELECT * FROM `students` WHERE DATEDIFF(CURDATE(), `date_of_birth`)>= 30;
4) SELECT * FROM `courses` WHERE `year`=1 AND `period`= 'I semestre';
5) SELECT * FROM `exams` WHERE `date`='2020-06-20' AND `hour`>'14:00:00';
6) SELECT * FROM `degrees` WHERE `level`='magistrale';