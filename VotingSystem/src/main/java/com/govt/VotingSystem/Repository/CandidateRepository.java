package com.govt.VotingSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.govt.VotingSystem.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, String> 
{
	
}
