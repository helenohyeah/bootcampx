/* Get total number of assignments for days where total
 * assignments is greater or equal to 10
 * Ordered by day
 */

SELECT day, count(id) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(id) >= 10
ORDER BY day;