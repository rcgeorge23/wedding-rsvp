package com.novinet.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.novinet.model.Invitee;

public interface InviteeRepository extends CrudRepository<Invitee, Long> {

	List<Invitee> findByName(String name);
	
}
