package com.govt.VotingSystem.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.VotingSystem.Repository.CandidateRepository;
import com.govt.VotingSystem.entity.Candidate;
@Component
public class CandidateDaoImpl implements CandidateDao
{
	@Autowired
	private CandidateRepository candrepo;
	@Override
	public void addCandidate(Candidate cand) 
	{
		candrepo.save(cand);
	}

	@Override
	public List<Candidate> getAllCandidate() 
	{
		return candrepo.findAll();
	}
	
	@Override
	public void doVoting(String candidate) 
	{
		Candidate candi = candrepo.findById(candidate).get();
		candi.setVotes(candi.getVotes()+1);
		candrepo.save(candi);
		
	}
	@Override
	public Candidate addCandidate(String candidate) 
	{
		Candidate candi = candrepo.findById(candidate).get();
		return candi;
	}
}
