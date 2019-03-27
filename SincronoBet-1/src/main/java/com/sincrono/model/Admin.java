package com.sincrono.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@Entity
@Table(name = "amministratore")
public class Admin {
	
	@Id
	private int amministratore_id;
	@Column(name="first_name")
	private String nome;
	@Column(name="last_name")
	private String cognome;
	@Column(name="email")
	private String email;
	@Column(name="password")
	private String password;
}
