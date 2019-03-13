package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StoricoGiocateService extends JpaRepository<StoricoGiocate, Integer> {
	void deleteBysgid(final int customer_id);
}
