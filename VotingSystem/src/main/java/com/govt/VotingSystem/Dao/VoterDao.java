package com.govt.VotingSystem.Dao;

import java.util.List;

import com.govt.VotingSystem.entity.Admin;
import com.govt.VotingSystem.entity.Voter;

public interface VoterDao 
{
	public void addVoter(Voter voter);

	public boolean validateVoter(String email, String password);

	public Voter getVoter(String email);

	public void changeStatus(String voter);

	public List<Voter>  getAllVoter();
}
