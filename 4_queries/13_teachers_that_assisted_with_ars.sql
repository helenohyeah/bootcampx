/* Get the name of all teachers that performed an ar
 * during cohort JUL02 and how many assistances they did
 */

SELECT
  DISTINCT teachers.name AS teacher,
  cohorts.name AS cohort,
  count(assistance_requests.*) AS total_assistances
FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;