package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;



public interface BasketService extends JpaRepository<Basket, Integer> {
	Basket findByid(final int id);
}