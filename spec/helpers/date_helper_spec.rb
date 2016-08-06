RSpec.describe DateHelper, type: :helper do

  describe "#full_date_format" do
    context "good data" do
      it "returns a formatted string, given a date" do
        the_date = DateTime.parse "Sat, 06 Aug 2016 13:02:58 -0500"
        expect(helper.full_date_format the_date).to eq "2016-08-06 13:02:58 -0500"
      end

      it "returns a formatted string, given a string" do
        the_date = "Sat, 06 Aug 2016 13:02:58 -0500"
        expect(helper.full_date_format the_date).to eq "2016-08-06 13:02:58 -0500"
      end
    end

    context "bad data" do
      it "returns '-', given empty string" do
        expect(helper.full_date_format "").to eq "-"
      end

      it "returns '-', given a random string" do
        expect(helper.full_date_format "a random string").to eq "-"
      end

      it "returns '-', given nil" do
        expect(helper.full_date_format "").to eq "-"
      end

      it "returns '-', given a bad date" do
        the_date = "Day, 66 Aug 2016 33:02:98 -0500"
        expect(helper.full_date_format "").to eq "-"
      end
    end
  end

end
