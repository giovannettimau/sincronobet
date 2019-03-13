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
@Table(name = "giocata_calcio")
public class GiocataCalcio {
	
	@Id
	private int c_id;
	@Column(name="customer_id")
	private int cid;
	@Column(name="calcio_id")
	private int calcid;
	@Column(name="storico_giocate_id")
	private int storicogiocate;
	@Column(name="risultato_scommesso")
	private String risultato;
	

}