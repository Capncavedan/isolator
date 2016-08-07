RSpec.describe IsolateHelper, type: :helper do

  describe "#bloodstream_infection_source_options" do
    it "returns an array of 11 options" do
      expect(helper.bloodstream_infection_source_options).to be_a Array
      expect(helper.bloodstream_infection_source_options.size).to eq 11
    end

    it "returns sorted options" do
      expect(helper.bloodstream_infection_source_options).to eq helper.bloodstream_infection_source_options.sort
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

end