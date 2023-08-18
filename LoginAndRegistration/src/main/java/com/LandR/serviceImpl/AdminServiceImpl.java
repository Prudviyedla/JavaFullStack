package com.LandR.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LandR.model.Admin;
import com.LandR.repository.AdminRepo;
import com.LandR.service.AdminService;

import jakarta.transaction.Transactional;


@Service
public class AdminServiceImpl implements AdminService {

    private final AdminRepo adminRepo;

    @Autowired
    public AdminServiceImpl(AdminRepo adminRepo) {
        this.adminRepo = adminRepo;
    }

  
    @Override
    public Admin findByUsername(String username) {
        return adminRepo.findByUsername(username);
    }
@Transactional
	@Override
	public Admin registerUser(Admin admin) {
		// TODO Auto-generated method stub
        return adminRepo.save(admin);
	}

public boolean updatePassword(String username, String oldPassword, String newPassword) {
    Admin admin = adminRepo.findByUsername(username);
    if (admin != null && oldPassword.equals(admin.getPassword())) {
        admin.setPassword(newPassword);
        adminRepo.save(admin);
        return true;
    }
    return false;
}

public boolean changePassword(String username, String oldPassword, String newPassword) {
    Admin admin = adminRepo.findByUsername(username);
    if (admin != null && oldPassword.equals(admin.getPassword())) {
        admin.setPassword(newPassword);
        adminRepo.save(admin);
        return true;
    }
    return false;
}
}
