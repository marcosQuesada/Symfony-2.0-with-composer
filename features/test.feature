Feature: Login to the demo area
	As an administrator
	I want to test login access to Demo
	So I can access restricted area 

	Scenario: check login form
	  Given I am on "/demo/secured/login"
	  When I fill in "username" with "admin"
	  And I fill in "password" with "adminpass"
	  And I press "Login"
	  Then I should see "Welcome"	 	    
