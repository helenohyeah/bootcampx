/* Get the total duration of all assistance requests 
 * for each cohort
 */

SELECT
  cohorts.name AS cohort,
  sum(completed_at - started_at) AS total_duration
FROM cohorts
  JOIN students ON cohort_id = cohorts.id
  JOIN assistance_requests ON student_id = students.id
GROUP BY cohort
ORDER BY total_duration;