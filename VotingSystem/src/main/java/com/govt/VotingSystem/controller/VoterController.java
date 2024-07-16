package com.govt.VotingSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.govt.VotingSystem.Dao.CandidateDao;
import com.govt.VotingSystem.Dao.VoterDao;
import com.govt.VotingSystem.entity.Candidate;
import com.govt.VotingSystem.entity.Voter;

import ch.qos.logback.core.model.Model;
@org.springframework.stereotype.Controller
public class VoterController 
{
	@RequestMapping("/displayHome")
	public String displayHome()
	{
		return "Home";
	}
	
	@Autowired
	private VoterDao dao;
	@Autowired
	private CandidateDao canDao;
	@RequestMapping("/signUp")
	public String signUp(Voter voter,org.springframework.ui.Model model)
	{
		dao.addVoter(voter);
		model.addAttribute("message","Voter added");
		return "VoterRegistration";
	}
	
	@RequestMapping("/voterLogin")
	public String voterLogin(String email,String password,org.springframework.ui.Model model)
	{
		boolean result = dao.validateVoter(email,password);
			if(result)
			{
				Voter vtr = dao.getVoter(email);
				List<Candidate> ls = canDao.getAllCandidate();
				model.addAttribute("voter", vtr);
				model.addAttribute("listOfCan", ls);
				return "UserDashBoard";
			}
			else
			{
				model.addAttribute("loginStatus", "In-valid Credential...");
				return "VoterSignin";
			}
	}
	
	@RequestMapping("/viewAllVoters")
	public String viewAllVoters(org.springframework.ui.Model model)
	{
		List<Voter> list = dao.getAllVoter();
		model.addAttribute("allVoters", list);
		return "DisplayVoter";
	}
	
}
