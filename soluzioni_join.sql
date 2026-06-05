/*Selezionare tutti gli studenti iscritti 
    al Corso di Laurea in Economia*/
SELECT 	`d`.`name` AS `degree`,
		CONCAT(`s`.`name`,
				" ",
				`s`.`surname`) AS `student_name`
FROM `degrees` AS `d`
	JOIN `students` AS `s`
    ON `d`.`id` = `s`.`degree_id`
WHERE `d`.`id` = 53
ORDER BY `s`.`name` ASC;

/*Selezionare tutti i Corsi di Laurea Magistrale 
    del Dipartimento di Neuroscienze*/
SELECT 	`deg`.`name` AS `degree`
FROM `departments` AS `dep`
	JOIN `degrees` AS `deg`
    ON `dep`.`id` = `deg`.`department_id`
WHERE `dep`.`id` = 7 AND `deg`.level = "Magistrale"
ORDER BY `deg`.`name` ASC;

/*Selezionare tutti i corsi in cui insegna 
    Fulvio Amato (id=44)*/
SELECT 	`c`.`name` AS `courses`
FROM `course_teacher` AS `ct`
	JOIN `courses` AS `c`
    ON `ct`.`course_id` = `c`.`id`
WHERE `ct`.`teacher_id` = 44
ORDER BY `c`.`name` ASC;

/*Selezionare tutti gli studenti con i dati relativi 
    al corso di laurea a cui sono iscritti e il relativo dipartimento, 
    in ordine alfabetico per cognome e nome*/
SELECT  CONCAT(`s`.`surname`,
		" ",
		`s`.`name`) AS `student_name`,
		`dg`.`name` AS `degree`,
		`dp`.`name` AS `department`
FROM `students` AS `s`
	JOIN `degrees` AS `dg` 
    ON `s`.`degree_id` = `dg`.`id`
	JOIN `departments` AS `dp`
    ON `dg`.`department_id` = `dp`.`id`
ORDER BY `s`.`surname` ASC,
		 `s`.`name` ASC;

/*Selezionare tutti i corsi di laurea con i relativi 
    corsi e insegnanti*/


/*Selezionare tutti i docenti che insegnano nel 
    Dipartimento di Matematica (54)*/

/*Selezionare per ogni studente il numero 
    di tentativi sostenuti per ogni esame, 
    stampando anche il voto massimo. 
    Successivamente, filtrare i tentativi con voto 
    minimo 18.*/
