SELECT
  COUNT(*) AS total_assistance_requests,
  name
FROM students
  JOIN assistance_requests
    ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY name;