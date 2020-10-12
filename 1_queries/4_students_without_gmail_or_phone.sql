/* Select students without a gmail account or phone number
 *
 */

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%@gmail.com'
  AND phone IS NULL;