Feature: Managing Projects
  As a project manager
  I should be able to create and edit projects
  So that I can put volunteers to work

Background:
  Given I am a project manager
  Given the following volunteers exist:
  | first_name | last_name | phone      | email               | city         | state | status  | major            | languages        |
  | Buzz       | Lightyear | 5556667777 | buzz@starcommand    | alameda      | CA    | Student | computer science | tagalog, spanish |

Scenario: Creating and Updating a Project
  Given I am on the projects page
  When I press "Create a New Project"
  Then I should be on the edit project page
  And I fill in "Project Name" with "Remove Snakes From Boots"
  And I fill in "Project Description" with "Assist toy cowboys with recurring problem."
  And I fill in "Project Location" with "Andy's Room"
  And I press "Submit Changes"
  Then I should be on the projects page
  And I should see "Remove Snakes From Boots"
  When I follow "Remove Snakes From Boots"
  Then I should be on the edit project page
  And I fill in "Project Name" with "Remove Poison From Water Hole"
  And I press "Submit Changes"
  Then I should be on the projects page
  And I should see "Remove Poison From Water Hole"
  And I should not see "Remove Snakes From Boots"

  Given I am on the volunteers page
  When I follow "View Buzz's Profile"
  When I press "Add to Project"
  When I check "Remove Poison From Water Hole"
  And I fill in "Message" with "Buzz I think you are perfect for this project!"
  And I press "Invite"
  Then I should see "Buzz has been contacted!"
  When I go to the projects page
  And I follow "Remove Poison From Water Hole"
  Then I should see "Buzz Lightyear"
  Then I should see "Pending Confirmation"