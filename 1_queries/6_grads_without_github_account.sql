/* Select graduates that are missing a github account
 *
 */

SELECT name, email, phone
FROM students
WHERE end_date IS NOT NULL
  AND github IS NULL;