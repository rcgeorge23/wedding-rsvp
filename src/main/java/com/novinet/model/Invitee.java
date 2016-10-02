package com.novinet.model;

import static org.apache.commons.lang3.builder.ToStringBuilder.reflectionToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Invitee {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String guestNames;
	private int numberOfGuests;
	private String foodPreferences;
	private String emailAddress;
	
	protected Invitee() {
	}

	public Invitee(String guestNames, int numberOfGuests, String foodPreferences, String emailAddress) {
		this.guestNames = guestNames;
		this.numberOfGuests = numberOfGuests;
		this.foodPreferences = foodPreferences;
		this.emailAddress = emailAddress;
	}

	public Long getId() {
		return id;
	}

	public String getGuestNames() {
		return guestNames;
	}

	public void setGuestNames(String guestNames) {
		this.guestNames = guestNames;
	}

	public int getNumberOfGuests() {
		return numberOfGuests;
	}

	public void setNumberOfGuests(int numberOfGuests) {
		this.numberOfGuests = numberOfGuests;
	}

	public String getFoodPreferences() {
		return foodPreferences;
	}

	public void setFoodPreferences(String foodPreferences) {
		this.foodPreferences = foodPreferences;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	
	@Override
	public String toString() {
		return reflectionToString(this);
	}
}
