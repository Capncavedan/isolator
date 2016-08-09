RSpec.describe ShipmentHelper, type: :helper do

  describe "#shipment_objective_codes_with_organisms" do
    it "returns an array of 4 items" do
      expect(helper.shipment_objective_codes_with_organisms).to be_a Array
      expect(helper.shipment_objective_codes_with_organisms.size).to eq 4
    end
  end

  describe "#selected_shipment_objective_code_with_organism" do
    it "is nil when objective_code is missing" do
      shipment = Shipment.new
      expect(helper.selected_shipment_objective_code_with_organism(shipment)).to eq nil
    end

    it "is A when objective code is A" do
      shipment = Shipment.new objective_code: "A"
      expect(helper.selected_shipment_objective_code_with_organism(shipment)).to eq "A"
    end

    it "is Q when objective code is Q" do
      shipment = Shipment.new objective_code: "Q"
      expect(helper.selected_shipment_objective_code_with_organism(shipment)).to eq "Q"
    end

    context "objective B" do
      it "is nil when organism is blank" do
        shipment = Shipment.new objective_code: "B"
        expect(helper.selected_shipment_objective_code_with_organism(shipment)).to eq nil
      end

      it "is 'B / H. influenza' when objective code B and organism H. influenza" do
        shipment = Shipment.new objective_code: "B", organism: "H. influenza"
        expect(helper.selected_shipment_objective_code_with_organism(shipment)).to eq "B / H. influenza"
      end

      it "is 'B / M. catarrhalis' when objective code B and organism M. catarrhalis" do
        shipment = Shipment.new objective_code: "B", organism: "M. catarrhalis"
        expect(helper.selected_shipment_objective_code_with_organism(shipment)).to eq "B / M. catarrhalis"
      end
    end
  end

end
