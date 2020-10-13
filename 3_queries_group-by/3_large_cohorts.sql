/* Get all cohorts with 18 or more students
 * Ordered by total students from smallest to largest
 *
 */

SELECT
  cohorts.name AS cohort_name,
  count(students.*) AS student_count
FROM students
  JOIN cohorts
  ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*);