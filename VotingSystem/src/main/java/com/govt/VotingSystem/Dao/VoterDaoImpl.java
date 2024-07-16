package com.govt.VotingSystem.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.VotingSystem.Repository.AdminRepository;
import com.govt.VotingSystem.Repository.VoterRepository;
import com.govt.VotingSystem.entity.Admin;
import com.govt.VotingSystem.entity.Voter;
@Component
public class VoterDaoImpl implements VoterDao 
{
	@Autowired
	private VoterRepository voterRepo;
	
	@Override
	public void addVoter(Voter voter) 
	{
		voter.setStatus("Not voted");
		voterRepo.save(voter);
	}

	@Override
	public boolean validateVoter(String email, String password)
	{
		Optional<Voter> optional = voterRepo.findById(email);
		if(optional.isPresent())
		{
			Voter voter = optional.get();
			if(voter.getPassword().equalsIgnoreCase(password))
			{
				return true;
			}
		}
		return false;
	}
	@Override
	public Voter getVoter(String email)
	{
		Optional<Voter> optional = voterRepo.findById(email);
		if(optional.isPresent())
		{
			return optional.get();
		}
		return null;
	}
	
	@Override
	public void changeStatus(String voter) 
	{
		Voter vtr = voterRepo.findById(voter).get();
		vtr.setStatus("voted");
		voterRepo.save(vtr);
	}
	
	@Override
	public List<Voter> getAllVoter() 
	{
		return voterRepo.findAll();
	}
}
