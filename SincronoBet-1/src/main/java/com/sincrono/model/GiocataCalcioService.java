package com.sincrono.model;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GiocataCalcioService extends JpaRepository<GiocataCalcio, Integer> {  
	void deleteBycid(final int customer_id);
	ArrayList <GiocataCalcio> findBystoricogiocate(final int storicogiocate);
}
