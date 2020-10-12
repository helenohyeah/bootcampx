/* Select students without a phone number or email
 *
 */

SELECT name, id
FROM students
WHERE phone IS NULL 
  OR email IS NULL;