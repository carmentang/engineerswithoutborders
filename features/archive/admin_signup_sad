# IF I'm not logged in, I shouldn't be able to do anything
Feature: Signing up for an account and logging in
 
  As a project manager of Engineers Without Borders - SF Chapter
  
Background: I am on the EWB home page

Scenario: Signing up without an Email
  Given I am on the login page
  And I follow "sign up here!"
  And I fill in "Name" with "Lawrence Vo"
  And I fill in "Password" with "iloveewb"
  And I fill in "Confirmation" with "iloveewb"
  And I press "Create my account"
  Then I should see "Invalid email address."
  
  
Scenario: Signing up without no valid password
  Given I am on the login page
  And I follow "sign up here!"
  And I fill in "Name" with "Lawrence Vo"
  And I fill in "Email" with "lawrencetvo@berkeley.edu"
  And I fill in "Password" with "ibm"
  And I fill in "Confirmation" with "iloveewb"
  And I press "Create my account"
  Then I should see "Your password must at least be 4 letters."
  

Scenario: Logging in with wrong password
  Given I am on the login page
  And I follow "sign up here!"
  And I fill in "Name" with "Lawrence Vo"
  And I fill in "Email" with "lawrencetvo@berkeley.edu"
  And I fill in "Password" with "iloveewb"
  And I fill in "Confirmation" with "iloveewb"
  And I press "Create my account"
  And I follow "Admin Login"
  And I fill in "Email" with "lawrencetvo@berkeley.edu"
  And I fill in "Password" with ""
  And I press "Log in"
  Then I should see "Invalid email/password combination"
