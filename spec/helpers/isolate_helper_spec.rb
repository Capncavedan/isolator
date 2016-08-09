RSpec.describe IsolateHelper, type: :helper do

  describe "#collect_jmi_number?" do
    it "is true for Obective A shipment" do
      shipment = Shipment.new objective_code: "A"
      expect(helper.collect_jmi_number? shipment).to eq true
    end

    it "is false for Obective Q shipment" do
      shipment = Shipment.new objective_code: "Q"
      expect(helper.collect_jmi_number? shipment).to eq false
    end
  end

  describe "#collect_bloodstream_infection_source?" do
    it "is true for Obective A shipment" do
      shipment = Shipment.new objective_code: "A"
      expect(helper.collect_bloodstream_infection_source? shipment).to eq true
    end

    it "is false for Obective Q shipment" do
      shipment = Shipment.new objective_code: "Q"
      expect(helper.collect_bloodstream_infection_source? shipment).to eq false
    end
  end

  describe "#collect_primary_diagnosis?" do
    it "is true for Obective A shipment" do
      shipment = Shipment.new objective_code: "A"
      expect(helper.collect_primary_diagnosis? shipment).to eq true
    end

    it "is false for Obective Q shipment" do
      shipment = Shipment.new objective_code: "Q"
      expect(helper.collect_primary_diagnosis? shipment).to eq false
    end
  end

  describe "#collect_specimen_type?" do
    it "is false for Obective A shipment" do
      shipment = Shipment.new objective_code: "A"
      expect(helper.collect_specimen_type? shipment).to eq false
    end

    it "is true for Obective Q shipment" do
      shipment = Shipment.new objective_code: "Q"
      expect(helper.collect_specimen_type? shipment).to eq true
    end
  end

  describe "#bloodstream_infection_source_options" do
    it "returns an array of 11 options" do
      expect(helper.bloodstream_infection_source_options).to be_a Array
      expect(helper.bloodstream_infection_source_options.size).to eq 11
    end

    it "returns sorted options" do
      expect(helper.bloodstream_infection_source_options).to eq helper.bloodstream_infection_source_options.sort
    end
  end

  describe "#specimen_type_options" do
    it "returns an array of 8 options" do
      expect(helper.specimen_type_options).to be_a Array
      expect(helper.specimen_type_options.size).to eq 8
    end

    it "returns sorted options" do
      expect(helper.specimen_type_options).to eq helper.specimen_type_options.sort
    end
  end

  describe "#service_options" do
    it "returns an array of 28 options" do
      expect(helper.service_options).to be_a Array
      expect(helper.service_options.size).to eq 28
    end

    it "returns sorted options" do
      expect(helper.service_options).to eq helper.service_options.sort
    end
  end

  describe "#primary_diagnosis_options" do
    it "returns an array of 21 options" do
      expect(helper.primary_diagnosis_options).to be_a Array
      expect(helper.primary_diagnosis_options.size).to eq 21
    end

    it "returns sorted options" do
      expect(helper.primary_diagnosis_options).to eq helper.primary_diagnosis_options.sort
    end
  end

  describe "#sex_options" do
    it "returns an array of 2 options" do
      expect(helper.sex_options).to be_a Array
      expect(helper.sex_options.size).to eq 2
    end
  end

end
