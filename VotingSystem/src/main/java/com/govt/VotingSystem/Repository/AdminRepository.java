package com.govt.VotingSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.govt.VotingSystem.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, String>
{

}
