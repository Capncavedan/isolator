Given(/^some data worth reporting on$/) do
  3.times do
    FactoryGirl.create :objective_a_shipment
    FactoryGirl.create :objective_q_shipment
  end
end

Then(/^I should see the hospital stats report$/) do
  shipment = Shipment.first

  within ".hospital-stats-#{shipment.hospital_number} .shipment-info" do
    expect(page).to have_content Shipment.where(hospital_number: shipment.hospital_number).count
  end

  within ".hospital-stats-#{shipment.hospital_number} .hospital-info" do
    expect(page).to have_content shipment.hospital_number
  end

  within ".hospital-stats-#{shipment.hospital_number} .objective-info" do
    a_count = Shipment.where(hospital_number: shipment.hospital_number).where(objective_code: 'A').count
    b_count = Shipment.where(hospital_number: shipment.hospital_number).where(objective_code: 'B').count
    q_count = Shipment.where(hospital_number: shipment.hospital_number).where(objective_code: 'Q').count

    expect(page).to have_content "A #{a_count}"
    expect(page).to have_content "B #{b_count}"
    expect(page).to have_content "Q #{q_count}"
  end

  within ".hospital-stats-#{shipment.hospital_number} .isolate-info" do
    a_count = Shipment.joins(:isolates).where(hospital_number: shipment.hospital_number).where(objective_code: 'A').count
    b_count = Shipment.joins(:isolates).where(hospital_number: shipment.hospital_number).where(objective_code: 'B').count
    q_count = Shipment.joins(:isolates).where(hospital_number: shipment.hospital_number).where(objective_code: 'Q').count
    total_count = Shipment.joins(:isolates).where(hospital_number: shipment.hospital_number).count

    expect(page).to have_content "A #{a_count}"
    expect(page).to have_content "B #{b_count}"
    expect(page).to have_content "Q #{q_count}"
    expect(page).to have_content "Total #{total_count}"
  end


  within "tr.hospital-stats-summary th.shipment-info" do
    expect(page).to have_content "6 shipments"
  end

  within ".hospital-stats-summary .objective-info" do
    expect(page).to have_content "A 3"
    expect(page).to have_content "B 0"
    expect(page).to have_content "Q 3"
  end

  within ".hospital-stats-summary .isolate-info" do
    a_count = Shipment.joins(:isolates).where(objective_code: 'A').count
    b_count = Shipment.joins(:isolates).where(objective_code: 'B').count
    q_count = Shipment.joins(:isolates).where(objective_code: 'Q').count
    total_count = Shipment.joins(:isolates).count

    expect(page).to have_content "A #{a_count}"
    expect(page).to have_content "B #{b_count}"
    expect(page).to have_content "Q #{q_count}"
    expect(page).to have_content "Total #{total_count}"
  end

end
