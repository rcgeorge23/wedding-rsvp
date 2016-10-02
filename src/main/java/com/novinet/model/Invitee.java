package com.novinet.model;

import static java.lang.String.format;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Invitee {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String name;

	protected Invitee() {
	}

	public Invitee(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return format("Invitee[id=%d, name='%s']", id, name);
	}

}
