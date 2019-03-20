package com.techelevator.problem.model;

import java.util.List;

public interface ProblemDao {

	
	public List<Problem>randomEasyProblems(int randomId);
	public List<Problem>mediumProblems();
	public List<Problem>hardProblems();
}
