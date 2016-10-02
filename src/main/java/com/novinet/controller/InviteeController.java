package com.novinet.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.novinet.model.Invitee;
import com.novinet.repository.InviteeRepository;

import jersey.repackaged.com.google.common.collect.Lists;

@RestController
@RequestMapping("/invitee")
public class InviteeController {

	@Resource
	InviteeRepository inviteeRepository;
	
	@RequestMapping(path = "/register", method = RequestMethod.PUT)
	public @ResponseBody Invitee register(@RequestBody Invitee invitee) {
		return inviteeRepository.save(invitee);
	}
	
	@RequestMapping(path = "/list", method = RequestMethod.GET)
	public @ResponseBody List<Invitee> list() {
		return Lists.newArrayList(inviteeRepository.findAll());
	}

}
