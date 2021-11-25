SELECT
  DISTINCT teachers.name AS teacher,
  cohorts.name AS cohort,
  COUNT(*) AS total_assistance_count
FROM assistance_requests
  JOIN teachers ON assistance_requests.teacher_id = teachers.id
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;