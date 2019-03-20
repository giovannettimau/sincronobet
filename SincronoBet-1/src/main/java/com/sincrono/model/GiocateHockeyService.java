package com.sincrono.model;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GiocateHockeyService extends JpaRepository<GiocataHockey, Integer> {
	void deleteByhid(final int customer_id);
	
	ArrayList<GiocataHockey> findBystoricogiocate(final int storicogiocate);
}
