When(/^I follow "([^"]*)"$/) do |link_text|
  click_link link_text
end

Then(/^I should be on the new shipment form page$/) do
  expect(current_path).to eq "/shipments/new"
end

When(/^I enter information about a new shipment$/) do
  fill_in "Starting number", with: 10
end

Then(/^I should be on the shipment show page$/) do
  expect(path).to match /shipments\/\d+$/
end

Then(/^I should see the shipment information I entered previously$/) do
  expect(page).to have_content "Starting number 10"
end
