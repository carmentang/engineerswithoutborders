Feature: Updating Volunteer Information
  As a person interested in joining Engineers Without Borders
  I should be able to register as a volunteer
  So that I can be added to projects

Scenario: Updating Profile Information
  Given I am on the edit profile page
  And I select "Student" from "Status"
  And I select "Bachelors" from "Education"
  And I fill in "Major" with "Computer Science"
  And I fill in "Certification" with "PE"
  And I fill in "Languages" with "Spanish"
  And I fill in "Level of Fluency" with "Proficient"
  And I fill in "Previous EWB Experience" with "Volunteered at Haiti"
  And I fill in "Previous International Experience" with "Studied abroad in Ireland"
  And I fill in "Previous Work Experience" with "Software Engineer with IBM"
  And I fill in "Reason" with "I love volunteering!"
  And I press "Submit"
  Then I should be on the profile page
  Then I should see "Student"
  Then I should see "Bachelors"
  Then I should see "Computer Science"
  Then I should see "PE"
  Then I should see "Spanish"
  Then I should see "Proficient"
  Then I should see "Volunteered at Haiti"
  Then I should see "Studied abroad in Ireland"
  Then I should see "Software Engineer with IBM"
  Then I should see "I love volunteering"