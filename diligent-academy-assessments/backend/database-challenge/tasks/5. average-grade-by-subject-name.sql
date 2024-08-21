INSERT INTO student_subject(studentID, subjectID) 
VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3);

INSERT INTO grade(studentID, subjectID, grade)
VALUES (1, 1, 3), (1, 2, 2), (1, 3, 5), (2, 1, 4), (2, 2, 3), (2, 3, 2), (3, 1, 5), (3, 2, 4), (3, 3, 3);

SELECT subject.name, AVG(grade.grade) AS average_grade
FROM subject
JOIN grade ON subject.subjectID = grade.subjectID
WHERE subject.name = 'Algebra'
GROUP BY subject.name;