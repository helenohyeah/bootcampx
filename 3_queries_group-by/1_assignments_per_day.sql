/* Get total number of assignments for each day of bootcamp
 * Ordered by day
 */

SELECT day, count(id) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;