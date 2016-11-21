Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I am a new, authenticated user$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit new_user_session_path
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Log in"
end

Given /^I am a project manager$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  role = 'manager'
  User.new(:email => email, :password => password, :role => role).save!

  visit new_user_session_path
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
end

Given /^the following users exist:$/ do |table|
	table.hashes.each do |table_hash|
		User.new(:email => table_hash[:email], 
				 :password => table_hash[:password],
				 :first_name => table_hash[:first_name],
				 :last_name => table_hash[:last_name]).save!
	end
end