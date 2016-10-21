Given /the following volunteers exist/ do |volunteers_table|
  volunteers_table.hashes.each do |volunteer|
    Volunteer.create(volunteer)
  end
end

# :nocov:
Given /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
    all_ratings = Volunteer.all_ratings
    ratings = rating_list.split(", ")
    all_ratings.each do |r|
      field_checked = find_field("ratings_#{r}")['checked']
      if ratings.include?(r)
        uncheck ? uncheck("ratings_#{r}") : check("ratings_#{r}")
      else
        field_checked ? check("ratings_#{r}") : uncheck("ratings_#{r}")
      end
    end
  end

And /^I am logged in as an admin$/ do

    @user = User.new(name: 'admin',
                     email: 'test@test.com',
                     password: 'password!',
                     password_confirmation: 'password!')
    @user.save

    step 'I follow "Admin Login"'
    step 'I fill in "Email" with "test@test.com"'
    step 'I fill in "Password" with "password!"'
    step 'I press "Log in"'
end

You can implement step definitions for undefined steps with these snippets:

Given(/^I am a project manager$/) do

  pending # Write code here that turns the phrase above into concrete actions

end



And /^I click first edit$/ do
  click_link('Edit', match: :first)
end
# :nocov:
