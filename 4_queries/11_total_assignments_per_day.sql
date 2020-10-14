/* Get each day with total numebr of assignments and total
 * duration of assignments
 */

SELECT
  day,
  count(*) AS number_of_assignments,
  sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;