package com.govt.VotingSystem.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@NoArgsConstructor
@Data
@ToString
@Entity
public class Admin 
{
	private String username;
	private String password;
	@Id
	private String email;
	private String mobile;
}
