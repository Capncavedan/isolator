RSpec.describe FlashHelper, type: :helper do

  describe "#bootstrap_class_for_flash_type" do
    it "maps success to bg-success" do
      expect(helper.bootstrap_class_for_flash_type(:success)).to eq "bg-success"
    end
  end

end
