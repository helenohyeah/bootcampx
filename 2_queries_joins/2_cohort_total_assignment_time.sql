/* Get total amount of time students have spent on assignments
 * For cohort FEB12
 */

SELECT SUM(assignment_submissions.duration) AS total_duration
FROM (students
    LEFT JOIN cohorts
    ON cohorts.id = students.cohort_id)
  LEFT JOIN assignment_submissions
  ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12';