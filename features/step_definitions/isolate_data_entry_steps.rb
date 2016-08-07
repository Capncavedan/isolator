Then(/^I should be on the isolate data entry form$/) do
  expect(current_path).to match /\/shipments\/\d+\/data_entry/
end

When(/^I fill out 5 rows of Objective\-A isolate data$/) do
  (0..4).each do |idx|
    within "#isolate_form_row_#{idx}" do
      fill_in "shipment_isolates_attributes_#{idx}_jmi_number",        with: "101678#{idx}"
      fill_in "shipment_isolates_attributes_#{idx}_code_number",       with: "123456"
      fill_in "shipment_isolates_attributes_#{idx}_accession_number",  with: "000000"
      fill_in "shipment_isolates_attributes_#{idx}_organism",          with: "H. pillori"
      fill_in "shipment_isolates_attributes_#{idx}_date_of_admission", with: "2016-03-01"
      fill_in "shipment_isolates_attributes_#{idx}_date_of_culture",   with: "2016-03-02"
      fill_in "shipment_isolates_attributes_#{idx}_age",               with: "#{42+idx}"

      select  "OTH - Other or Unknown",   from: "shipment_isolates_attributes_#{idx}_source"
      select  "Male",                     from: "shipment_isolates_attributes_#{idx}_sex"
      select  "ID - Infectious Disease",  from: "shipment_isolates_attributes_#{idx}_service"
      select  "INF - Infection",          from: "shipment_isolates_attributes_#{idx}_primary_diagnosis"
      select  "Yes",                      from: "shipment_isolates_attributes_#{idx}_icu"
      select  "No",                       from: "shipment_isolates_attributes_#{idx}_nosocomial"
    end
  end
end

Then(/^I should be on the shipments index page$/) do
  expect(current_path).to eq "/shipments"
end
