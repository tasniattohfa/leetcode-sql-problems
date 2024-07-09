SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e 
ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY 1, 3
ORDER BY 1, 3;
