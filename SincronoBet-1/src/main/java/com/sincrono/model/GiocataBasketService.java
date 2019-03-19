package com.sincrono.model;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GiocataBasketService extends JpaRepository<GiocataBasket, Integer> {
	void deleteBybid(final int customer_id);
	ArrayList <GiocataBasket> findBystoricogiocate(final int storicogiocate);

}
