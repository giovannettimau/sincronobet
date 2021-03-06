package com.sincrono.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@Entity

public class Hockey {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="campionato")
	private String categoria;
	
	@Column(name="squadra_1")
	private String squadraA;
	
	@Column(name="squadra_2")
	private String squadraB;
	
	@Column(name="quota_1")
	private Double quota1;
	
	@Column(name="quota_2")
	private Double quota2;
	
	@Column(name="risultato")
	private String risultato;

	@Column(name="p_1")
	private int p1;
	
	@Column(name="p_2")
	private int p2;
}
