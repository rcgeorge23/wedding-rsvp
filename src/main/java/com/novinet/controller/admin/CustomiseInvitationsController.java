package com.novinet.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/customise-invitations")
public class CustomiseInvitationsController {
	
    @GetMapping()
    public String index(Model model) {
    	return "/admin/customise-invitations.html";
    }
}
