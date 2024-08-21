UPDATE student SET homeroomID = 1 WHERE name = 'John';
UPDATE student SET homeroomID = 1 WHERE name = 'Adam';
UPDATE student SET homeroomID = 2 WHERE name = 'Lucy';

SELECT * FROM student 
JOIN homeroom ON student.homeroomID = homeroom.homeroomID 
WHERE homeroom.name = '9A';