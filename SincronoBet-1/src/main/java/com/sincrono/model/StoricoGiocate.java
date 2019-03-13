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
@Table(name = "storico_giocate")
public class StoricoGiocate {
	
	@Id
	private int storico_giocate_id;
	@Column(name="puntata")
	private double puntata;
	@Column(name="vincita")
	private double vincita;
	@Column(name="saldo")
	private double saldo;
	@Column(name="customer_id")
	private int sgid;
	

}
