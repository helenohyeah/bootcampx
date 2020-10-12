/* Select students that are currently enrolled (no end date)
 * Ordered by cohort id
 */

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;