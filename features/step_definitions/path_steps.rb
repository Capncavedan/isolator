Then(/^I should be on the isolate data entry form$/) do
  expect(current_path).to match /\/shipments\/\d+\/data_entry/
end

Then(/^I should be on the shipments index page$/) do
  expect(current_path).to eq "/shipments"
end

Then(/^I should be on the new shipment form page$/) do
  expect(current_path).to eq "/shipments/new"
end

Then(/^I should be on the shipment show page$/) do
  expect(current_path).to match /shipments\/\d+$/
end
