When(/^I enter hospital number "([^"]*)"$/) do |num|
  fill_in "hospital_number", with: num
end
