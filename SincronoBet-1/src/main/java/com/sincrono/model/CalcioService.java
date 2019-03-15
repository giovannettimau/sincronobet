package com.sincrono.model;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;



public interface CalcioService extends JpaRepository<Calcio, Integer> {
	Calcio findByid(final int id);

}

