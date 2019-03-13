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
@Table(name = "giocata_basket")
public class GiocataBasket {
	
	@Id
	private int b_id;
	@Column(name="customer_id")
	private int bid;
	@Column(name="basket_id")
	private int baskid;
	@Column(name="storico_giocate_id")
	private int storicogiocate;
	@Column(name="risultato_scommesso")
	private String risultato;
	

}
