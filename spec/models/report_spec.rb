RSpec.describe Report, type: :model do

  describe ".hospital_stats" do
    it "returns a hash" do
      stats = Report.hospital_stats
      expect(stats).to be_a Hash
    end
  end

end
