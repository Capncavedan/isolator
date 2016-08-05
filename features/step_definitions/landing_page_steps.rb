When(/^I go to the app's home page$/) do
  visit "/"
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

When(/^I enter hospital number "([^"]*)"$/) do |num|
  fill_in "hospital_number", with: num
end

When(/^I press "([^"]*)"$/) do |button_text|
  click_button button_text
end

Then(/^I should see a success message saying "([^"]*)"$/) do |message_text|
  within ".flash-message.success" do
    expect(page).to have_content message_text
  end
end
