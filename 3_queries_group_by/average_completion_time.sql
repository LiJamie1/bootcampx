SELECT
  students.name AS student_name,
  AVG(assignment_submissions.duration) AS average_completion_time
FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_completion_time DESC;
