package com.LandR.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.LandR.model.Admin;
@Repository
public interface AdminRepo extends JpaRepository<Admin,Long> {
	
	 Admin findByUsername(String username);

}
