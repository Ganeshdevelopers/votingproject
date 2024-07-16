package com.govt.VotingSystem.Dao;

import java.util.List;

import com.govt.VotingSystem.entity.Candidate;

public interface CandidateDao 
{

	void addCandidate(Candidate cand);

	List<Candidate> getAllCandidate();

	void doVoting(String candidate);

	Candidate addCandidate(String candidate);
	
}
