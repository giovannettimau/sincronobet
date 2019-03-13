package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GiocateHockeyService extends JpaRepository<GiocataHockey, Integer> {
	void deleteByhid(final int customer_id);
}
