/* Get total number of roll over students
 * Student's start_date differs from their cohort's start_date
 */

SELECT 
  students.name AS student_name,
  cohorts.name AS cohort_name,
  cohorts.start_date AS cohort_start_date,
  students.start_date AS student_start_date
FROM students 
  JOIN cohorts
  ON cohorts.id = cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;