/* Get the average amount of time that students wait for an ar
 * 
 */

SELECT 
  avg(wait_time) AS average_wait_time
FROM (
  SELECT
    avg(started_at - created_at) AS wait_time
  FROM assistance_requests
    JOIN students ON student_id = students.id
) as wait_times;

/* solution:

SELECT 
  avg(started_at-created_at) as average_wait_time
FROM assistance_requests;
*/