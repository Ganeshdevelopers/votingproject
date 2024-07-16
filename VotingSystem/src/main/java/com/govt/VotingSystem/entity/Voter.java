package com.govt.VotingSystem.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@Data
@ToString
@Entity
public class Voter 
{
	private String Firstname;
	private String Lastname;
	private String Dob;
	private String Gender;
	private String Aadhar;
	private String Pan;
	@Id
	private String Email;
	private String Mobile;
	private String Address;
	private String Username;
	private String Password;
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String status;
}
