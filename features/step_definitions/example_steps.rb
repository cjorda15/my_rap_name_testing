$firstname='Ken'
$lastinitial='Z'

When(/^I am on the homepage$/) do
  visit SERVER_URL
end

And(/^I submit as a ([^"]*)$/) do | gender|
  gender[0] = gender[0].upcase
  find('[name="'+ gender +'"]').click
end

And(/^I submit ([^"]*) times$/) do | count |
  count = count.to_i
  until count.to_i <= 0
    count = count-1
    find('[name="Female"]').click
  end
end

And(/^I provide input for all the fields$/) do
  fill_in 'firstname', with: $firstname
  fill_in 'lastinitial', with: $lastinitial
end


Then(/^I see the input fields$/) do
  find('[name="firstname"]')
  find('[name="lastinitial"]')
end

Then(/^I see the user error shown$/) do
  expect(page).to have_text("You must enter your first name.")
end

Then(/^I see input for all the fields$/) do
  expect(page).to have_field('firstname', with: $firstname)
  expect(page).to have_field('lastinitial', with: $lastinitial)
end

Then(/^I see a rap name$/) do
  expect(page).to have_selector('td:nth-child(1) > div > table > tbody > tr',
   count: 1)
end

Then(/^I see exactly ([^"]*) rap names$/) do |amount|
  expect(page).to have_selector('td:nth-child(1) > div > table > tbody > tr', count: amount.to_i)
end
