package com.novinet.controller;

import static jersey.repackaged.com.google.common.collect.Lists.newArrayList;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.novinet.model.Invitee;
import com.novinet.repository.InviteeRepository;

@RestController
public class HomeController {

	@Resource
	InviteeRepository inviteeRepository;
	
	@RequestMapping("/home/")
	public String index() {
		inviteeRepository.save(new Invitee("Test! " + System.currentTimeMillis()));
		return String.valueOf(newArrayList(inviteeRepository.findAll()));
	}

}
