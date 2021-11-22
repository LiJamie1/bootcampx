-- SELECT * FROM students
SELECT COUNT(*) AS COUNT
FROM students
WHERE cohort_id IN (1, 2, 3)