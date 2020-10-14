/* Get the average duration of assistance requests 
 * for all cohorts
 */

SELECT
  avg(total_duration) AS average_total_duration
FROM (
  SELECT
    cohorts.name AS cohort,
    sum(completed_at - started_at) AS total_duration
  FROM cohorts
    JOIN students ON cohort_id = cohorts.id
    JOIN assistance_requests ON student_id = students.id
  GROUP BY cohort
  ORDER BY total_duration
) AS cohort_durations;