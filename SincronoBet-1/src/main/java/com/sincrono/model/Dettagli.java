package com.sincrono.model;

public class Dettagli {

	
	private String squadraA;
	private String squadraB;
	private String risultatoGiocato;
	private int p1;
	private int p2;
	private double quotaTotale;
	public Dettagli() {
		// TODO Auto-generated constructor stub
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
	public String getRisultatoGiocato() {
		return risultatoGiocato;
	}
	public void setRisultatoGiocato(String risultatoGiocato) {
		this.risultatoGiocato = risultatoGiocato;
	}
	public int getP1() {
		return p1;
	}
	public void setP1(int p1) {
		this.p1 = p1;
	}
	public int getP2() {
		return p2;
	}
	public void setP2(int p2) {
		this.p2 = p2;
	}
	public double getQuotaTotale() {
		return quotaTotale;
	}
	public void setQuotaTotale(double quotaTotale) {
		this.quotaTotale = quotaTotale;
	}
	public Dettagli(String squadraA, String squadraB, String risultatoGiocato, int p1, int p2, double quotaTotale) {
		super();
		this.squadraA = squadraA;
		this.squadraB = squadraB;
		this.risultatoGiocato = risultatoGiocato;
		this.p1 = p1;
		this.p2 = p2;
		this.quotaTotale = quotaTotale;
	}

}
