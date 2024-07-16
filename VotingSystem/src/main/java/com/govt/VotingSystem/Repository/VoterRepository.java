package com.govt.VotingSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.govt.VotingSystem.entity.Voter;

public interface VoterRepository extends JpaRepository<Voter, String> 
{

}
