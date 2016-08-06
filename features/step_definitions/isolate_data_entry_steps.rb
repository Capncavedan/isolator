Then(/^I should be on the isolate data entry form$/) do
  expect(current_path).to match /\/shipments\/\d+\/data_entry/
end

When(/^I fill out the Objective\-A isolate data$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on the shipments index page$/) do
  expect(current_path).to eq "/shipments"
end
