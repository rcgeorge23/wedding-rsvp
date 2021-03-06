package com.novinet.controller.admin.manageguests;

import static org.slf4j.LoggerFactory.getLogger;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.novinet.service.guest.ImportGuestsService;

@Controller
@RequestMapping("/admin/manage-guests/import-guests-modal")
public class ImportGuestsModalController {

	private static final Logger log = getLogger(ImportGuestsModalController.class);
	
	@Resource
	private ImportGuestsService importGuestsService;
	
	@GetMapping
	public String index(Model model) {
		return "/admin/manage-guests/import-guests-modal.html";
	}

	@PostMapping
	public ResponseEntity<?> upload(@RequestParam("file") MultipartFile uploadedFile) {
		try {
			importGuestsService.importBytes(uploadedFile.getBytes());
		} catch (Exception e) {
			log.error("Error writing uploaded file to filesystem", e);
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<>(HttpStatus.OK);
	}
}
