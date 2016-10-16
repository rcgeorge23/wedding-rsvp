package com.novinet.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/manage-guests")
public class ManageGuestsController {
	
    @GetMapping()
    public String index(Model model) {
    	return "/admin/manage-guests.html";
    }
}
