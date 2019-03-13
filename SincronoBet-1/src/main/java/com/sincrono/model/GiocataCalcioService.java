package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GiocataCalcioService extends JpaRepository<GiocataCalcio, Integer> {  
	void deleteBycid(final int customer_id);
}
