const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT
  DISTINCT teachers.name AS teacher,
  cohorts.name AS cohort
FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`, [`${process.argv[2]}`])
.then(res => {
  res.rows.forEach(res => console.log(`${res.cohort}: ${res.teacher}`));
})
.catch(err => console.error('query error', err.stack));