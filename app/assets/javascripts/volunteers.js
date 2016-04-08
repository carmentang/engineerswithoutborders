var joinTeamCheckbox = document.getElementById("volunteer_join_project_team");
var joinTeamDetails = document.getElementById("join_team_details");
joinTeamCheckbox.onchange = function() {
  if (this.checked) {
    joinTeamDetails.style['display'] = 'block';
  } else {
    joinTeamDetails.style['display'] = 'none';
  } 
}