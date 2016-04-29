Feature: As a team leader, I want to navigate and group together volunteers into groups.
This is done by a group field we can use to filter the volunteers.

Background: volunteers added to the database
  Given the following volunteers exist:
  | first_name | last_name | phone      | email               | city         | state | status  | major            | languages        | group      |
  | jio        | calderon  | 5556667777 | jio@calderon.com    | alameda      | CA    | Student | computer science | tagalog, spanish | Haiti      |
  | daniel     | anderson  | 5105105999 | daniel@anderson.com | berkeley     | CA    | Working | computer science | english, spanish | Fiji       |
  | carmen     | tang      | 1231236666 | carmen@tang.com     | new york     | NY    | Student | computer science | english, french  | Unassigned |
  | lawrence   | vo        | 2223334432 | lawrence@vo.com     | berkeley     | CA    | Student | potato farming   | english, french  | Fiji       |
  | kevin      | chen      | 1234562342 | kevin@chen.com      | new york     | NY    | Retired | potato farming   | english, french  | Fiji       |
  | anthony    | tran      | 5523423422 | anthony@tran.com    | las vegas    | CA    | Retired | potato farming   | english, spanish | Haiti      |

Scenario: the group field is invisible to volunteers
  Given I am on the Volunteer page
  Then I should not see "TEAMS"

Scenario: people are assigned to groups by the admin
  Given I am on the login page
  And I am log in as an admin
  Then I should see "Login successful!"
  Then I should see "View All Volunteers"
  And I follow "Edit"
  And I select "Fiji" from "#volunteer_group"
  And I press "edit volunteer"
  Then I should see "volunteer successfully edited"
  Then I am on the list volunteers page
  And I should see "Fiji"
  
Scenario: filtering based on the groups works properly.
  Given I am on the login page
  And I am log in as an admin
  Then I should see "Login successful!"
  And I should see "View All Volunteers"
  Then I follow "View All Volunteers"
  And I select "Haiti" from "group"
  Then I should see "jio"
  And I should not see "daniel"
  And I should not see "carmen"
  And I should see "anthony"
  


  
  
  