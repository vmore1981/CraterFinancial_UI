@regression
Feature: Access control user management. Use cases for app access control

  @valid_login @smoke_tests
  Scenario: As a user, I should be able to login
    Given I am on the login page
    And login page components exist
    When I enter valid username and valid password
    And I click login button
    Then I should be on the Dashboard page
   

  @valid_login_variable
  Scenario: As a user, I should be able to login
    Given I am on the login page
    And login page components exist
    When I enter valid username and valid password
    And I click login button
    Then I should be on the " Dashboard" page
    And "Success!" message displays

  @invalid_login
  Scenario: As a user, I should not be able to login with invalid credentials
    Given I am on the login page
    When I enter username <"username"> and invalid password <"password">
    And I click login button
    Then I should not be logged in

	Examples:
  |		username										|		password					|    
  |		dummy@primetechschool.com		|		nottrealPass			|    
  |		notreal@primetehcschool.com	|		primetech@school	|	    
  |		dummy@primetechschool.com		|											|    
  |																|		primetech@school	|    