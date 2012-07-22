Feature: Login to the demo area
	As an administrator
	I want to test login access to Demo
	So I can access restricted area 

	Scenario: check login form
	  Given I am on "/admin/"
	  And I am redirected to "/admin/login"
	  When I fill in "username" with "admin"
	  And I fill in "password" with "n3v3ntu4nd0v4b4ck3nd"
	  And I press "Login"
	  Then I should see "Dashboard"	 	    

	Scenario: fill login form
	  Given I am on "/admin/"
	  When I fill in "username" with "admin"
	  And I fill in "password" with "n3v3ntu4nd0v4b4ck3nd"
	  And I press "Login"
	  Then I should see "Dashboard"	  

	Scenario: Unexisting user cannot access demo secured area
	  Given I am on "/admin/login"
	  When I fill in "username" with "fakeuser"
	  And I fill in "password" with "n3v3ntu4nd0v4b4ck3nd"
	  And I press "Login"
	  Then I should see "Bad credentials"	

	Scenario: Existing user with bad password cannot access demo secured area
	  Given I am on "/admin/login"
	  When I fill in "username" with "admin"
	  And I fill in "password" with "fakepass"
	  And I press "Login"
	  Then I should see "The presented password is invalid"	

	Scenario: Logout
	    Given I am logged in as "admin" with password "n3v3ntu4nd0v4b4ck3nd"
	    And I am on "/admin/"
	    When I follow "Logout"
	    Then I should be on "/admin/login"
	    And I should see "Login"	  