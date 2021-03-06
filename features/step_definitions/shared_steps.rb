When(/^I go to the app's home page$/) do
  visit "/"
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).to_not have_content content
end

Then(/^I should see a (success|notice|failure) flash message saying "([^"]*)"$/) do |flash_type, message_text|
  within ".flash.flash-message.#{flash_type}" do
    expect(page).to have_content message_text
  end
end

When(/^I press "([^"]*)"$/) do |button_text|
  click_button button_text
end

When(/^I follow "([^"]*)"$/) do |link_text|
  click_link link_text
end

Then(/^show me the page$/) do
  save_and_open_page
end