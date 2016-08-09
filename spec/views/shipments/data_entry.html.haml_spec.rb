RSpec.describe "shipments/data_entry.html.haml", type: :view do

  it "works" do
    assign :shipment, FactoryGirl.build_stubbed(:shipment)
    expect{ render }.to_not raise_error
  end

  context "objective A shipment" do
    before do
      shipment = FactoryGirl.build_stubbed :objective_a_shipment
      shipment.isolates.build
      assign :shipment, shipment
      render
    end

    it "has a JMI number input" do
      expect(rendered).to have_selector "input#shipment_isolates_attributes_0_jmi_number"
    end

    it "has a bloodstream source select" do
      expect(rendered).to have_selector "select#shipment_isolates_attributes_0_source"
    end

    it "has a primary diagnosis select" do
      expect(rendered).to have_selector "select#shipment_isolates_attributes_0_primary_diagnosis"
    end

    it "does not have a specimen type select" do
      expect(rendered).to_not have_selector "select#shipment_isolates_attributes_0_specimen_type"
    end
  end

  context "objective Q shipment" do
    before do
      shipment = FactoryGirl.build_stubbed :objective_q_shipment
      shipment.isolates.build
      assign :shipment, shipment
      render
    end

    it "does not have a JMI number input" do
      expect(rendered).to_not have_selector "input#shipment_isolates_attributes_0_jmi_number"
    end

    it "does not have a bloodstream source select" do
      expect(rendered).to_not have_selector "select#shipment_isolates_attributes_0_source"
    end

    it "does not have a primary diagnosis select" do
      expect(rendered).to_not have_selector "select#shipment_isolates_attributes_0_primary_diagnosis"
    end

    it "has a specimen type select" do
      expect(rendered).to have_selector "select#shipment_isolates_attributes_0_specimen_type"
    end
  end

end
