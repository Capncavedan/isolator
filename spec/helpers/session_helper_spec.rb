RSpec.describe SessionHelper, type: :helper do

  describe "#current_hospital_number" do
    it "retrieves from the session" do
      allow(helper).to receive(:session).and_return({current_hospital_number: "999"})
      expect(helper.current_hospital_number).to eq "999"
    end
  end

  describe "#current_hospital_number=" do
    it "retrieves from the session" do
      session = Hash.new
      allow(helper).to receive(:session).and_return(session)
      helper.current_hospital_number = "999"
      expect(session[:current_hospital_number]).to eq "999"
    end
  end

end
