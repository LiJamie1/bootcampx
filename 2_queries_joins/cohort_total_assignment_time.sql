SELECT 
  SUM(assignment_submissions.duration) AS total_duration
FROM cohorts
INNER JOIN students
  ON cohorts.id = students.cohort_id
INNER JOIN assignment_submissions
  ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12';
