package com.govt.VotingSystem.Dao;

import java.util.List;

import com.govt.VotingSystem.entity.Admin;

public interface Admindao 
{
	public Boolean validateAdmin(String email, String password);

	public Admin getAdmin(String email);

	public List<Admin> getAllAdmins();
}
