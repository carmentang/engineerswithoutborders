Feature: Registering Project Manager
  As an administrator
  I should be able to register project managers directly via email
  So that they can organize projects


Scenario: Inviting Project Managers by email
  Given I am logged in as an admin
  When I follow "Add Project Managers"
  Then I should be on the create project manager page
  And I fill in "First Name" with "Cowardly"
  And I fill in "Last Name" with "Lion"
  And I fill in "Email" with "somewhere@over.rainbow"
  And I press "Submit"
  Then I should see "Project Manager was successfully registered and contacted"