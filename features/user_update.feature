Feature: Updating Volunteer Information
  As a person interested in joining Engineers Without Borders
  I should be able to register as a volunteer
  So that I can be added to projects

Scenario: Updating Profile Information
  Given I am a new, authenticated user
  Given I am on the home page
  When I follow "Profile"
  And I follow "Edit Profile"
  And I select "Bachelor's Degree" from "Education"
  And I fill in "Field of study or expertise" with "Computer Science"
  #And I fill in "Certification" with "PE"
  #And I fill in "Languages" with "Spanish"
  #And I fill in "Level of Fluency" with "Proficient"
  #And I fill in "Previous EWB Experience" with "Volunteered at Haiti"
  #And I fill in "Previous International Experience" with "Studied abroad in Ireland"
  #And I fill in "Previous Work Experience" with "Software Engineer with IBM"
  #And I fill in "Reason" with "I love volunteering!"
  And I press "Update Background"
  Then I should see "Bachelor's Degree"
  Then I should see "Computer Science"