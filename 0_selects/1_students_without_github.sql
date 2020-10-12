/* Select students without a github username on their account
 * Ordered by cohort_id
 */

SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;