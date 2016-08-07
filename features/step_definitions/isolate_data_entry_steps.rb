Then(/^I should be on the isolate data entry form$/) do
  expect(current_path).to match /\/shipments\/\d+\/data_entry/
end

When(/^I fill out the Objective\-A isolate data$/) do
  fill_in "JIM number",               with: "1"
  fill_in "Code number",              with: "A-1"
  fill_in "Accession number",         with: "ABC123"
  fill_in "Organism",                 with: "H. pylori"
  fill_in "Date of admission",        with: "7/1/2016"
  fill_in "Date of culture",          with: "7/2/2016"
  select  "OTH / Other or Unknown",   from: "Source of BSI"
  select  "M",                        from: "Sex"
  fill_in "Age",                      with: "42"
  select  "ID / Infectious Disease",  from: "Service"
  select  "INF / Infection",          from: "Primary diagnosis"
  select  "Yes",                      from: "ICU?"
  select  "No",                       from: "Nosocomial?"
end

Then(/^I should be on the shipments index page$/) do
  expect(current_path).to eq "/shipments"
end
