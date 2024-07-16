package com.govt.VotingSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.VotingSystem.Dao.Admindao;
import com.govt.VotingSystem.Dao.CandidateDao;
import com.govt.VotingSystem.entity.Admin;
import com.govt.VotingSystem.entity.Candidate;

@Controller
public class AdminController 
{
	@Autowired
	private Admindao dao;
	@Autowired
	private CandidateDao candDao;
	@RequestMapping("/AdminLogin")
	public String AdminLogin(String email,String password,org.springframework.ui.Model model)
	{
		Boolean result = dao.validateAdmin(email,password);
		if(result)
		{
			List<Candidate> list = candDao.getAllCandidate();
			Admin ad = dao.getAdmin(email);
			model.addAttribute("ls", list);
			model.addAttribute("admin", ad);
			return "AdminDashBoard";
		}
		else
		{
			model.addAttribute("loginStatus", "In-valid Credential");
			return "AdminSignin";
		}
	}
	
	@RequestMapping("/viewAllAdmins")
	public String viewAllAdmins(Model model)
	{
		List<Admin> adList = dao.getAllAdmins();
		model.addAttribute("allAdmins", adList);
		return "DisplayAdmin";
	}
}
