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
INSERT INTO problems (problem, difficulty) VALUES ('Create a string array method called fizzBuzz that takes in no arguments or parameters. Create a method that returns a string array with a string for each integer from 1 to 100 inclusive. If the value is an even multiple of 3, put the string "Fizz" in the array. Even multiple of 5, put in "Buzz". Even multiple of both 3 and 5, put in "FizzBuzz". For all other values, put the number in the resulting array. [1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11,...]',1);
commit;
INSERT INTO problems (problem, difficulty) VALUES ('Receive a string as input from a user then reverse the string and display it. If user enters helloworld then the ouput should be: dlowolleh',1);
commit;

UPDATE problems
SET problem_id = 7
Where problem_id = 9;



