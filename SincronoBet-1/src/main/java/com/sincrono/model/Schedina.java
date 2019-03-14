package com.sincrono.model;

public class Schedina {
	private Integer id;
	private String risultato;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRisultato() {
		return risultato;
	}
	public void setRisultato(String risultato) {
		this.risultato = risultato;
	}
	public Schedina(Integer id, String risultato) {
		super();
		this.id = id;
		this.risultato = risultato;
	}
	public Schedina() {
		super();
	}
	

}
