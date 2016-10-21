Feature: As a team leader, I want to navigate and group together volunteers into groups.
This is done by a group field we can use to filter the volunteers.

Background: volunteers added to the database
  Given the following volunteers exist:
  | first_name | last_name | phone      | email               | city         | state | status  | major            | languages        | team          |
  | jio        | calderon  | 5556667777 | jio@calderon.com    | alameda      | CA    | Student | computer science | tagalog, spanish | Haiti         |
  | daniel     | anderson  | 5105105999 | daniel@anderson.com | berkeley     | CA    | Working | computer science | english, spanish | Unassigned    |
  | carmen     | tang      | 1231236666 | carmen@tang.com     | new york     | NY    | Student | computer science | english, french  | Haiti         |
  | lawrence   | vo        | 2223334432 | lawrence@vo.com     | berkeley     | CA    | Student | potato farming   | english, french  | Honduras      |
  | kevin      | chen      | 1234562342 | kevin@chen.com      | new york     | NY    | Retired | potato farming   | english, french  | Unassigned    |
  | anthony    | tran      | 5523423422 | anthony@tran.com    | las vegas    | CA    | Retired | potato farming   | english, spanish | Unassigned    |
  And I am on the login page
  And I am log in as an admin
  And I should see "Login successful!"
  And I should see "View All Volunteers"
  And I follow "View All Volunteers"
  And I should see "Listing Volunteers"

Scenario: the team field is invisible to volunteers
  Given I am on the Volunteer page
  Then I should not see "team"

# Scenario: no need to press refresh sees all volunteers
#   Given I am on list volunteers page
#   Then I should not see "team"
  
Scenario: filtering based on the groups works properly.
  Given I am on the list volunteers page
  And I select "Haiti" from "team"
  And I press "Refresh"
  Then I should not see "daniel"
  And I should not see "lawrence"
  And I should not see "kevin"
  And I should see "jio calderon"
  And I should see "carmen"

Scenario: admin can change the team of an volunteer
  Given I am on the list volunteers page
  And I select "Haiti" from "team"
  And I press "Refresh"
  Then I should see "jio"
  And I should see "carmen"
  And I click first edit  
  Then I should see "Edit Page"
  And I select "Kenya" from "Team"
  And I press "Update Volunteer"
  Then I should see "Volunteer was successfully updated."
  And I follow "View All Volunteers"
  And I select "Haiti" from "team"
  And I press "Refresh"
  And I should not see "jio calderon"
  And I should see "carmen"
  And I select "Kenya" from "team"
  And I press "Refresh"
  And I should see "jio calderon"


  
  
  