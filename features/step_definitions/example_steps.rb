Given(/^I am on the homepage$/) do
  find('.logo')
end

Then(/^I see the text "(.*?)"$/) do |text|
  page.has_text?(text)
end
