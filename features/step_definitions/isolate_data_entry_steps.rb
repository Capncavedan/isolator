Then(/^I should be on the isolate data entry form$/) do
  expect(current_path).to match /\/shipments\/\d+\/data_entry/
end

When(/^I fill out the Objective\-A isolate data$/) do
  within "#isolate_form_row_0" do
    fill_in "shipment_isolates_attributes_0_jmi_number",        with: "101678"
    fill_in "shipment_isolates_attributes_0_code_number",       with: "123456"
    fill_in "shipment_isolates_attributes_0_accession_number",  with: "000000"
    fill_in "shipment_isolates_attributes_0_organism",          with: "H. pillori"
    fill_in "shipment_isolates_attributes_0_date_of_admission", with: "2016-03-01"
    fill_in "shipment_isolates_attributes_0_date_of_culture",   with: "2016-03-02"
    fill_in "shipment_isolates_attributes_0_age",               with: "42"

    select  "OTH / Other or Unknown",   from: "shipment_isolates_attributes_0_source"
    select  "Male",                     from: "shipment_isolates_attributes_0_sex"
    select  "ID / Infectious Disease",  from: "shipment_isolates_attributes_0_service"
    select  "INF / Infection",          from: "shipment_isolates_attributes_0_primary_diagnosis"
    select  "Yes",                      from: "shipment_isolates_attributes_0_icu"
    select  "No",                       from: "shipment_isolates_attributes_0_nosocomial"
  end
end

Then(/^I should be on the shipments index page$/) do
  expect(current_path).to eq "/shipments"
end
