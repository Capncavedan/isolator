RSpec.describe Isolate, type: :model do

  describe "relationships" do
    it "belongs to a shipment" do
      expect(Isolate.new).to respond_to :shipment
    end
  end

  describe "validations" do
    before do
      @isolate = Isolate.new
    end

    it "requires icu boolean" do
      @isolate.valid?
      expect(@isolate.errors[:icu]).to include "can't be blank"
    end

    it "requires nosocomial boolean" do
      @isolate.valid?
      expect(@isolate.errors[:nosocomial]).to include "can't be blank"
    end

    describe "age validations" do
      it "is invalid when blank" do
        @isolate.valid?
        expect(@isolate.errors[:age]).to include "can't be blank"
      end

      it "is invalid when < 0" do
        @isolate.age = -1
        @isolate.valid?
        expect(@isolate.errors[:age]).to include "is not 0-125"
      end

      it "is invalid when > 125" do
        @isolate.age = -1
        @isolate.valid?
        expect(@isolate.errors[:age]).to include "is not 0-125"
      end

      it "is valid when 42" do
        @isolate.age = 42
        @isolate.valid?
        expect(@isolate.errors[:age]).to eq []

      end
    end
  end
end
