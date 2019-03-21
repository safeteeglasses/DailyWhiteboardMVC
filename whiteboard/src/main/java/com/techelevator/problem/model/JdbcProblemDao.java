package com.techelevator.problem.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JdbcProblemDao implements ProblemDao{

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcProblemDao(DataSource datasource) {
	this.jdbcTemplate = new JdbcTemplate(datasource);
}
	
	@Override
	public List<Problem> randomEasyProblems(int randomId) {
		List<Problem> easyProblem = new ArrayList<Problem>();
			String sqlGetEasyProblem = "Select * From problems where problem_id = ?";
			randomId = (int) (Math.floor(Math.random() * easyCount()) + 1);
			SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetEasyProblem,randomId);
			while (results.next()) {
				easyProblem.add(mapRowToEasyProblem(results));
			}
			return easyProblem;
	}
	public int easyCount(){
		int count=0;
		String sqlGetCount = "Select Count(*) AS problem_count From problems";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetCount);
		if(results.next()) {
			count = results.getInt("problem_count");
		}
		return count;
	}
	private Problem mapRowToEasyProblem(SqlRowSet results) {
		Problem p = new Problem();
		p.setProblemId(results.getInt("problem_id"));
		p.setName(results.getString("problem"));
		p.setDifficulty(results.getInt("difficulty"));
		return p;
	}
	private Problem mapRowToCount(SqlRowSet results) {
		Problem p = new Problem();
		p.setCount(results.getInt("problem_count"));
		return p;
	}
	@Override
	public List<Problem> mediumProblems() {
		List<Problem> mediumProblem = new ArrayList<Problem>();
		String sqlGetMediumProblem = "Select problem From problems where difficulty = 2";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetMediumProblem);
		while (results.next()) {
			mediumProblem.add(mapRowToEasyProblem(results));
		}
		return mediumProblem;
}
	@Override
	public List<Problem> hardProblems() {
		List<Problem> hardProblem = new ArrayList<Problem>();
		String sqlGetHardProblem = "Select problem From problems where difficulty = 3";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetHardProblem);
		while (results.next()) {
			hardProblem.add(mapRowToEasyProblem(results));
		}
		return hardProblem;
	}
}
