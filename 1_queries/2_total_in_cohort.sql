/* Get total number of students in first 3 cohorts
 *
 */

SELECT count(*)
FROM students
WHERE cohort_id IN (1, 2, 3);