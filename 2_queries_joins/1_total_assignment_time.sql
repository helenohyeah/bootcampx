/* Get total amount of time a student has spent on all assignments
 * For student Ibrahim Schimmel
 */

SELECT SUM(assignment_submissions.duration) AS total_duration
FROM students
  LEFT JOIN assignment_submissions
  ON students.id = assignment_submissions.student_id
WHERE name = 'Ibrahim Schimmel';