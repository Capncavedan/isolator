Then(/^I should be on the new shipment form page$/) do
  expect(current_path).to eq "/shipments/new"
end

When(/^I enter information about a new Objective\-A shipment$/) do
  select "A", from: "Objective code"
  fill_in "Isolate starting number", with: 10
  fill_in "Isolate quantity to expect", with: 5
end

Then(/^I should be on the shipment show page$/) do
  expect(current_path).to match /shipments\/\d+$/
end

Then(/^I should see the Objective\-A shipment information I entered previously$/) do
  expect(page).to have_content "Hospital number 123456"
  expect(page).to have_content "Objective code A"
  expect(page).to have_content "Isolate starting number 10"
  expect(page).to have_content "Isolate quantity to expect 5"
end

When(/^I enter information about a new Objective\-B\/H\. influenza shipment$/) do
  select "B / H. influenza", from: "Objective code"
  fill_in "Isolate starting number", with: 10
  fill_in "Isolate quantity to expect", with: 5
end

Then(/^I should see the Objective\-B\/H\. influenza shipment information I entered previously$/) do
  expect(page).to have_content "Hospital number 123456"
  expect(page).to have_content "Objective code B"
  expect(page).to have_content "Organism H. influenza"
  expect(page).to have_content "Isolate starting number 10"
  expect(page).to have_content "Isolate quantity to expect 5"
end

When(/^I enter information about a new Objective\-B\/M\. catarrhalis shipment$/) do
  select "B / M. catarrhalis", from: "Objective code"
  fill_in "Isolate starting number", with: 10
  fill_in "Isolate quantity to expect", with: 5
end

Then(/^I should see the Objective\-B\/M\. catarrhalis shipment information I entered previously$/) do
  expect(page).to have_content "Hospital number 123456"
  expect(page).to have_content "Objective code B"
  expect(page).to have_content "Organism M. catarrhalis"
  expect(page).to have_content "Isolate starting number 10"
  expect(page).to have_content "Isolate quantity to expect 5"
end
