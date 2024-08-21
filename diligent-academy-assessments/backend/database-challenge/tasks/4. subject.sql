CREATE TABLE IF NOT EXISTS subject (
  subjectID SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO subject(name) VALUES ('Algebra');
INSERT INTO subject(name) VALUES ('Biology');
INSERT INTO subject(name) VALUES ('World History');

CREATE TABLE IF NOT EXISTS student_subject (
  studentID INT NOT NULL,
  subjectID INT NOT NULL,
  PRIMARY KEY (studentID, subjectID),
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (subjectID) REFERENCES subject(subjectID)
);

CREATE TABLE IF NOT EXISTS grade (
  gradeID SERIAL PRIMARY KEY,
  studentID INT NOT NULL,
  subjectID INT NOT NULL,
  grade INT CHECK (grade BETWEEN 1 AND 5),
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (subjectID) REFERENCES subject(subjectID)
);