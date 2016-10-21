Feature: Registering Volunteer
  As a person interested in joining Engineers Without Borders
  I should be able to register as a volunteer
  So that I can be added to projects

Scenario: Filling out the Volunteer Form by subscribing
  Given I am on the Volunteer page
  When I fill in "First name" with "Mark"
  And I fill in "Last name" with "Emiliano"
  And I fill in "Phone" with "650-999-0111"
  And I fill in "Email" with "helloworld@berkeley.edu"
  And I fill in "City" with "Berkeley"
  And I select "CA" from "State"
  And I check "Subscribe"
  And I press "Sign Up!"
  Then I should see "Volunteer was successfully created."
  Then I should see "In order to place you into ideal projects more quickly, we would invite you to add more details about yourself to your profile."
  When I press "Update Profile Now"
  Then I should be on the edit profile page