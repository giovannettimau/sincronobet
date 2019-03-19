package com.sincrono.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CustomerService extends JpaRepository<Customer, Integer> { 
	List<Customer> findBynome(final String first_name);	
	List<Customer> findAll();
	Customer findByemail(final String email);
	@Query("SELECT MAX(customer_id) from Customer")
	int getLast();
	void deleteByemail(final String email);
	

}
