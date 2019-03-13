package com.sincrono.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminService extends JpaRepository<Admin, Integer> { 
	Admin findByemail(final String email);
	
}
