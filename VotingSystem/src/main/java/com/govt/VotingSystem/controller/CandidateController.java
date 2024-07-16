package com.govt.VotingSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.VotingSystem.Dao.CandidateDao;
import com.govt.VotingSystem.Dao.VoterDao;
import com.govt.VotingSystem.entity.Candidate;
import com.govt.VotingSystem.entity.Voter;

@Controller
public class CandidateController 
{
	@Autowired
	private CandidateDao dao;
	@RequestMapping("/addCandidate")
	public String addCandidate(Candidate cand,Model model)
	{
		String message = "Candidate is not Eligible...!!";
		if(cand.getAge()<24)
		{
			 message+=" because of age...!!";
		}
		else if (cand.getMonthlyincome()>10000)
		{
			 message+=" because of Monthly Income...!!";
		}
		else if (cand.getYearlyincome()>120000)
		{
			 message+=" because of Yearly Income...!!";
		}
		else if(cand.getTotalproperty()>10000000)
		{
			 message+=" because of Total Property...!!";
		}
		else if(cand.getCriminalbackground().equalsIgnoreCase("yes"))
		{
			 message+=" because of criminal background";
		}
		else
		{
			message = "Your Application is Approved...!!";
			dao.addCandidate(cand);
			model.addAttribute("check", true);
			model.addAttribute("status", message);
			return "ApplyCandidate";
		}
		model.addAttribute("status", message);
		model.addAttribute("check", false);
		return "ApplyCandidate";
	}
	
	@Autowired
	private VoterDao vDao;
	@RequestMapping("/addVote")
	public String addVote(String voter ,String candidate,Model model)
	{
		dao.doVoting(candidate);
		vDao.changeStatus(voter);
		Candidate ca = dao.addCandidate(candidate);
		Voter v = vDao.getVoter(voter);
		model.addAttribute("name", ca.getFirstname());
		model.addAttribute("voter", v);
		model.addAttribute("listOfCan", dao.getAllCandidate());
		return "UserDashBoard";
	}
	
	@RequestMapping("/viewAllCandidates")
	public String viewAllCandidates(Model model)
	{
		List<Candidate> list = dao.getAllCandidate();
		model.addAttribute("allCand", list);
		return "DisplayCandidate";
	}
}
