DROP TABLE IF EXISTS problems;
DROP SEQUENCE IF EXISTS seq_problem_id;

CREATE SEQUENCE seq_problem_id;

CREATE TABLE problems
(
	problem_id INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_problem_id'),
	problem VARCHAR(1000) NOT NULL,
	difficulty INTEGER NOT NULL
);

INSERT INTO problems (problem, difficulty) VALUES ('Create an integer method called ArrayCount9 that takes in an integer array called "nums". Given an array of ints, return the number of 9''s in the array.', 1);

commit;

INSERT INTO problems (problem, difficulty) VALUES ('Given a string containing a sentence, reverse the words in the sentence and display the result.', 1);
commit;
INSERT INTO problems (problem, difficulty) VALUES ('Given three ints, one is small, one is medium, and one is large. Return true if the three values are evenly spaced. i.e. the difference between small and medium is the same as the differene between medium and large. Given 2 4 6 return true // Given 3 5 9 return false',1);
commit;
INSERT INTO problems (problem, difficulty) VALUES ('Create a boolean method called double23 that takes in an integer array called "nums". Given an int array, return true if the array contains 2 twice, or 3 twice. The array will be length 0, 1, or 2.   double23([2, 2]) --> true // double23({3, 3]) -->true // double23([2, 3}) -->false',1);
commit;
INSERT INTO problems (problem, difficulty) VALUES ('Create a list of type integer method called oddOnly that takes in an integer array "nums". Given an array of integers, return a list of integers containing just the odd values.',1);



UPDATE users
SET id = 6
Where id = 7;



