package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StoricoGiocateService extends JpaRepository<StoricoGiocate, Integer> {
	void deleteBysgid(final int customer_id);
	@Query("SELECT MAX(storico_giocate_id) from StoricoGiocate")
	int getLast();
}
