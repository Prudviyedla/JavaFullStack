package com.LandR.service;

import com.LandR.model.Admin;

public interface AdminService {
	
	
	Admin findByUsername(String username);
	
	Admin registerUser(Admin admin);

}
