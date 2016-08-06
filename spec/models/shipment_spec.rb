RSpec.describe Shipment, type: :model do

  it "can be instantiated" do
    expect { Shipment.new }.to_not raise_error
  end

  describe "validations" do
    before do
      @shipment = Shipment.new
      @shipment.valid?
    end

    it "validates presence of hospital_number" do
      expect(@shipment.errors[:hospital_number]).to include "can't be blank"
    end

    it "validates presence of objective_code" do
      expect(@shipment.errors[:objective_code]).to include "can't be blank"
    end

    it "validates presence of starting_number" do
      expect(@shipment.errors[:starting_number]).to include "can't be blank"
    end

    it "validates presence of isolate_quantity" do
      expect(@shipment.errors[:isolate_quantity]).to include "can't be blank"
    end

    it "validates objective_code is one of a list" do
      expect(@shipment.errors[:objective_code]).to include "is not included in the list"
    end
  end

end
