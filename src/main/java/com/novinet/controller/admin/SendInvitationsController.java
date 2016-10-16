package com.novinet.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/send-invitations")
public class SendInvitationsController {
	
    @GetMapping()
    public String index(Model model) {
    	return "/admin/send-invitations.html";
    }
}
