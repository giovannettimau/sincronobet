package com.sincrono.model;

public class Schedina {
	private Integer id;
	private int count;
	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}
	private String risultato;
	private String tiposport;
	private double quota;
	public Integer getId() {
		return id;
	}
	
	public String getTiposport() {
		return tiposport;
	}

	public void setTiposport(String tiposport) {
		this.tiposport = tiposport;
	}

	public double getQuota() {
		return quota;
	}

	public Schedina(Integer id, String risultato, String tiposport, double quota) {
		super();
		this.id = id;
		this.risultato = risultato;
		this.tiposport = tiposport;
		this.quota = quota;
	}

	public void setQuota(double quota) {
		this.quota = quota;
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
