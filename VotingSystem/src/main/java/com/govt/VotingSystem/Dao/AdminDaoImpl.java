package com.govt.VotingSystem.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.VotingSystem.Repository.AdminRepository;
import com.govt.VotingSystem.entity.Admin;
@Component
public class AdminDaoImpl implements Admindao
{
	@Autowired
	private AdminRepository adminRepo;
	@Override
	public Boolean validateAdmin(String email, String password) 
	{
		Optional<Admin> optional = adminRepo.findById(email);
		if(optional.isPresent())
		{
			Admin admin = optional.get();
			if(admin.getPassword().equalsIgnoreCase(password))
			{
				return true;
			}
		}
		return false;
	}
	@Override
	public Admin getAdmin(String email) 
	{
		return adminRepo.findById(email).get();
	}
	
	@Override
	public List<Admin> getAllAdmins()
	{
		return adminRepo.findAll();
	}
}
