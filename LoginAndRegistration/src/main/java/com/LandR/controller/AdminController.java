package com.LandR.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.LandR.model.Admin;
import com.LandR.service.AdminService;
import com.LandR.serviceImpl.AdminServiceImpl;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    private final AdminService adminService;
    private final AdminServiceImpl adminServiceImpl;

    @Autowired
    public AdminController(AdminService adminService, AdminServiceImpl adminServiceImpl) {
        this.adminService = adminService;
		this.adminServiceImpl = adminServiceImpl;
    }
    
    
    
    @GetMapping("/home")
    public String homePage() {
        return "home";
    }
    
    @GetMapping("/register")
    public String showRegistrationPage(Model model) {
        model.addAttribute("admin", new Admin());
        return "register";
    }

    @PostMapping("/register")
    public String registerAdmin(@ModelAttribute("admin") Admin admin) {
        adminService.registerUser(admin);
        return "redirect:/login";
    }
   
    
    @GetMapping("/login")
    public String showLoginPage(Model model) {
        model.addAttribute("admin", new Admin());
        return "login";
    }

//    @PostMapping("/login")
//    public String loginAdmin(@ModelAttribute("admin") Admin admin) {
//        // Validate the username and password
//        Admin admins = adminService.findByUsername(admin.getUsername());
//        if (admin != null && admin.getPassword().equals(admin.getPassword())) {
//            return "redirect:/";
//        } else {
//            // Login failed, you can show an error message or handle as needed
//            return "redirect:/login?error";
//        }
//    }
    @PostMapping("/login")
    public String loginAdmin(@ModelAttribute("admin") Admin admin, HttpSession session) {
        // Validate the username and password
        Admin authenticatedAdmin = adminService.findByUsername(admin.getUsername());
        if (authenticatedAdmin != null && authenticatedAdmin.getPassword().equals(admin.getPassword())) {
            // Store username in session
            session.setAttribute("loggedInUsername", authenticatedAdmin.getUsername());
            return "redirect:/";
        } else {
            // Login failed, you can show an error message or handle as needed
            return "redirect:/login?error";
        }
    }
    
    @GetMapping("/forgotpassword")
    public String forgotPassword() {
        return "forgotpassword";
    }
   
    @PostMapping("/forgotpassword")
    public String forgotPassword(@RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 @RequestParam("username") String username,
                                 RedirectAttributes redirectAttributes) {

        // Get the username of the logged-in admin here
        
        
        if (adminServiceImpl.changePassword(username, oldPassword, newPassword)) {
            redirectAttributes.addFlashAttribute("successMessage", "Password changed successfully.");
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Password change failed. Please check your old password.");
        }

        return "redirect:/forgotpassword";
    }


    @GetMapping("/")
    public String showWelcomePage(HttpSession session) {
        String loggedInUsername = (String) session.getAttribute("loggedInUsername");
        if (loggedInUsername != null) {
            return "welcome";
        }
        else {
        	return "redirect:/login";
        }
    }

     
    @GetMapping("/changepassword")
    public String updatePassword(HttpSession session) {
        String loggedInUsername = (String) session.getAttribute("loggedInUsername");
        if (loggedInUsername != null) {

        return "changepassword";
        }
        else {
        	return "redirect:/login";
        }
    }
    
    @PostMapping("/changepassword")
    public String changePassword(@RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 RedirectAttributes redirectAttributes, HttpSession session) {

        // Get the username of the logged-in admin here
        String username = (String) session.getAttribute("loggedInUsername");

        
        if (adminServiceImpl.changePassword(username, oldPassword, newPassword)) {
            redirectAttributes.addFlashAttribute("successMessage", "Password changed successfully.");
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "Password change failed. Please check your old password.");
        }

        return "redirect:/changepassword";
    }
    
    
   

   
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
    
    
}





