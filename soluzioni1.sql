/*Selezionare tutti gli studenti nati nel 1990 */
SELECT `s`.*
FROM `students` as `s`
WHERE YEAR(`s`.`date_of_birth`) = "1990";

/*Selezionare tutti i corsi che valgono più di 10 crediti*/
SELECT `c`.*
FROM `courses` as `c`
WHERE `c`.`cfu` > "10";

/*Selezionare tutti gli studenti che hanno più di 30 anni*/
SELECT `s`.*
FROM `students` as `s`
WHERE 2026 - YEAR(`s`.`date_of_birth`) > 30;

/*Selezionare tutti i corsi del primo semestre 
    del primo anno di un qualsiasi corso di laurea */
SELECT `c`.*
FROM `courses` as `c`
WHERE `c`.`period` = "I semestre" AND `c`.`year` = "1";

/*Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del
    20/06/2020 */
SELECT `e`.*
FROM `exams` as `e`
WHERE `e`.`date` = "2020-06-20" AND `e`.`hour` >= "14:00:00";

/*Selezionare tutti i corsi di laurea magistrale*/
SELECT `d`.*
FROM `degrees` as `d`
WHERE `d`.`level` = "magistrale";

/*Da quanti dipartimenti è composta l'università?*/
SELECT COUNT(*)
FROM `departments`
WHERE 1;

/*Quanti sono gli insegnanti che non hanno 
    un numero di telefono?*/
SELECT COUNT(*)
FROM `teachers` AS `t`
WHERE `t`.`phone` IS NULL;


