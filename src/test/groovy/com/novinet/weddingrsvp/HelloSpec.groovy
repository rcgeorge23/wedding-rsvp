package com.novinet.weddingrsvp

import geb.Browser
import geb.spock.GebSpec

class HelloSpec extends GebSpec {

	def "hello"() {
		given:
		Browser browser = new Browser()
		browser.go("http://www.google.com")
		
		expect:
		browser.currentUrl == "http://www.google.com"
		1 == 1
	}
}
