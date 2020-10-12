/* Select students from cohort 1
 * Ordered by name alphabetically
 */

SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name;