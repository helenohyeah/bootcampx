/* Get the average time of assistance requests
 *
 */

SELECT
  avg(completed_at - started_at) AS average_ar_duration
FROM assistance_requests;