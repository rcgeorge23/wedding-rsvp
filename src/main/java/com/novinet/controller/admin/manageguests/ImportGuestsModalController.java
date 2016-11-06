package com.novinet.controller.admin.manageguests;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/manage-guests/import-guests-modal")
public class ImportGuestsModalController {
	
    @GetMapping()
    public String index(Model model) {
    	return "/admin/manage-guests/import-guests-modal.html";
    }
}
