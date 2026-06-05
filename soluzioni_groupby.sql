/*Contare quanti iscritti ci sono stati ogni anno*/
SELECT  YEAR(`s`.`enrolment_date`) AS `enrolment_year`, 
        COUNT(*) AS `students_num`
FROM `students` AS	`s`
GROUP BY YEAR(`s`.`enrolment_date`)
ORDER BY `enrolment_year` ASC;

/*Contare gli insegnanti che hanno 
    l'ufficio nello stesso edificio*/
SELECT  `t`.`office_address`, 
		COUNT(*) AS `teachers_num`
FROM `teachers` AS `t`
GROUP BY `t`.`office_address`
HAVING `teachers_num` > 1
ORDER BY `teachers_num` DESC;
/*Calcolare la media dei voti di ogni appello d'esame*/


/*Contare quanti corsi di laurea ci sono per
    ogni dipartimento*/
SELECT  `depart`.`name` AS `department_name`, 
		COUNT(`degr`.`department_id`) AS `degrees_num`
FROM `departments` AS `depart`
JOIN `degrees` AS `degr` 
    ON `depart`.`id` = `degr`.`department_id`
GROUP BY `depart`.`id`, `depart`.`name`
ORDER BY `depart`.`name` ASC;