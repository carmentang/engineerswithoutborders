Feature: Signing up as a volunteer with bad arguments
 
  As a person with mal intentions trying to mess up our database by
  submitting incomplete arguments

Background: I am on the EWB home page


Scenario: Filling out the Volunteer Form by subscribing
  Given I am on the Volunteer page
  When I press "Sign Up!"
  Then I should see "Error: Invalid first name."
  
  When I fill in "First name" with "Mark"
  And I press "Sign Up!"
  Then I should see "Error: Invalid last name."
  
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Luigi"
  And I press "Sign Up!"
  Then I should see "Error: Invalid phone number."
  
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Luigi"
  And I fill in "Phone" with "apple"
  And I press "Sign Up!"
  Then I should see "Error: Invalid phone number"
  
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Luigi"
  And I fill in "Phone" with "510 510 5555"
  And I press "Sign Up!"
  Then I should see "Error: Invalid email address"
  
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Luigi"
  And I fill in "Phone" with "510 510 5555"
  And I fill in "Email" with "helloworldatberkeley.edu"
  And I press "Sign Up!"
  Then I should see "Error: Invalid email address"
  
  
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Luigi"
  And I fill in "Phone" with "apple"
  And I fill in "Phone" with "510 510 5555"
  And I fill in "Email" with "helloworld@berkeley.edu"
  And I select "CA" from "State"
  And I press "Sign Up!"
  Then I should see "Error: Invalid City"
  
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Luigi"
  And I fill in "Phone" with "apple"
  And I fill in "Phone" with "510 510 5555"
  And I fill in "Email" with "helloworld@berkeley.edu"
  And I select "CA" from "State"
  And I fill in "City" with "Berkeley"
  And I check "Subscribe"
  And I press "Sign Up!"
  Then I should see "Volunteer was successfully created."
  