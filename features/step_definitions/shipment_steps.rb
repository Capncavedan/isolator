Then(/^I follow the edit link for the existing shipment$/) do
  within "td.edit-shipment-#{@shipment.id}" do
    click_link "Edit"
  end
end

Given(/^an existing shipment$/) do
  @shipment = FactoryGirl.create :objective_a_shipment
end

When(/^I update information about the Objective\-A shipment$/) do
  fill_in "Isolate starting number", with: 233
end

Then(/^I should see the updated Objective\-A shipment information$/) do
  expect(page).to have_content "A-233"
end

When(/^I enter information about a new Objective\-A shipment$/) do
  select "A", from: "Objective code"
  fill_in "Isolate starting number", with: 10
  fill_in "Isolate quantity to expect", with: 5
end

When(/^I enter information about a new Objective\-Q shipment$/) do
  select "Q", from: "Objective code"
  fill_in "Isolate starting number", with: 22
  fill_in "Isolate quantity to expect", with: 5
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
