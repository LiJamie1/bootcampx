SELECT
  cohorts.name,
  COUNT(*) AS total_students
FROM cohorts JOIN students
  ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY 
  COUNT(*) ASC;
