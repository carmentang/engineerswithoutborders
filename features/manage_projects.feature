Feature: Managing Projects
  As a project manager
  I should be able to create and edit projects
  So that I can put volunteers to work

Background:
  Given I am a project manager
  Given the following users exist:
   | email                 | password | first_name | last_name |
   | buzz@starcommand.com  | infinity | Buzz       | Lightyear |

Scenario: Creating and Updating a Project
  Given I am on the projects page
  When I follow "New Project"
  Then I should be on the new project page
  And I fill in "Name" with "Remove Snakes From Boots"
  And I fill in "Description" with "Assist toy cowboys with recurring problem."
  And I fill in "Volunteer capacity" with "2"
  And I fill in "Volunteers" with "1"
  And I fill in "Location" with "Andy's Room"
  And I press "Create Project"
  When I follow "Project Listings"
  Then I should be on the projects page
  And I should see "Remove Snakes From Boots"
  When I follow "Remove Snakes From Boots"
  When I follow "Edit"
  And I fill in "Name" with "Remove Poison From Water Hole"
  And I press "Update Project"
  And I follow "Project Listings"
  Then I should be on the projects page
  Then I should see "Remove Poison From Water Hole"
  And I should not see "Remove Snakes From Boots"

  # NOT IMPLEMENTED YET
  # Given I am on the users page
  # When I follow "Buzz Lightyer"
  # When I press "Add to Project"
  # When I check "Remove Poison From Water Hole"
  # And I fill in "Message" with "Buzz I think you are perfect # for this project!"
  # And I press "Invite"
  # Then I should see "Buzz has been contacted!"
  # When I go to the projects page
  # And I follow "Remove Poison From Water Hole"
  # Then I should see "Buzz Lightyear"
  # Then I should see "Pending Confirmation"