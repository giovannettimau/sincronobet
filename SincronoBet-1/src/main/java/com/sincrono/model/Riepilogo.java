package com.sincrono.model;

public class Riepilogo {
	
	
	
	
	
	private String squadraA;
	private String squadraB;
	private double quota;
	private String risultatoGiocato;
	private int id;
	private double quotaTotale;
	
	public Riepilogo(String squadraA, String squadraB, double quota, String risultatoGiocato, int id, double quotaTotale) {
		super();
		this.squadraA = squadraA;
		this.squadraB = squadraB;
		this.quota = quota;
		this.risultatoGiocato = risultatoGiocato;
		this.id = id;
		this.quotaTotale = quotaTotale;
		
	}
	
	public Riepilogo() {
		
	}
	
	
	
	public double getQuotaTotale() {
		return quotaTotale;
	}

	public void setQuotaTotale(double quotaTotale) {
		this.quotaTotale = quotaTotale;
	}

	public int getId() {
		return id;
	}


	
	public void setId(int id) {
		this.id = id;
	}

	
	public String getSquadraA() {
		return squadraA;
	}

	
	public void setSquadraA(String squadraA) {
		this.squadraA = squadraA;
	}

	
	public String getSquadraB() {
		return squadraB;
	}

	
	public void setSquadraB(String squadraB) {
		this.squadraB = squadraB;
	}

	
	public double getQuota() {
		return quota;
	}

	
	public void setQuota(double quota) {
		this.quota = quota;
	}

	
	public String getRisultatoGiocato() {
		return risultatoGiocato;
	}

	
	public void setRisultatoGiocato(String risultatoGiocato) {
		this.risultatoGiocato = risultatoGiocato;
	}

	
}