/* Get currently enrolled students' average assignment completion time
 * Order from greatest duration to least duration
 */

SELECT
  students.name AS student,
  avg(assignment_submissions.duration) AS average_assignment_duration
FROM students 
  JOIN assignment_submissions
  ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;