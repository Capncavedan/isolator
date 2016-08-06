Then(/^I should be on the new shipment form page$/) do
  expect(current_path).to eq "/shipments/new"
end

When(/^I enter information about a new shipment$/) do
  fill_in "Isolate starting number", with: 10
end

Then(/^I should be on the shipment show page$/) do
  expect(current_path).to match /shipments\/\d+$/
end

Then(/^I should see the shipment information I entered previously$/) do
  expect(page).to have_content "Hospital number 123456"
  expect(page).to have_content "Isolate starting number 10"
end
