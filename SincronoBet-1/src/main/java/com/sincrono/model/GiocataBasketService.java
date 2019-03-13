package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GiocataBasketService extends JpaRepository<GiocataBasket, Integer> {
	void deleteBybid(final int customer_id);

}
