SELECT
  students.name AS student_name,
  AVG(assignment_submissions.duration) AS student_average_completion_time,
  AVG(assignments.duration) AS average_completion_time
FROM students
  JOIN assignment_submissions
    ON students.id = assignment_submissions.student_id
  JOIN assignments
    ON assignments.id = assignment_submissions.assignment_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING
  AVG(assignment_submissions.duration) < AVG(assignments.duration);
