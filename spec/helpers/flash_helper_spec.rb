RSpec.describe FlashHelper, type: :helper do

  describe "#bootstrap_class_for_flash_type" do
    it "maps success to bg-success" do
      expect(helper.bootstrap_class_for_flash_type(:success)).to eq "bg-success"
    end

    it "maps notice to bg-info" do
      expect(helper.bootstrap_class_for_flash_type(:notice)).to eq "bg-info"
    end

    it "maps failure to bg-danger" do
      expect(helper.bootstrap_class_for_flash_type(:failure)).to eq "bg-danger"
    end

    it "maps something else to nil" do
      expect(helper.bootstrap_class_for_flash_type(:bogus)).to be_nil
    end
  end

  describe "#glyphicon_for_flash_type" do
    it "maps success correctly" do
      expect(helper.glyphicon_for_flash_type(:success)).to eq "glyphicon glyphicon-ok alert-success"
    end

    it "maps notice correctly" do
      expect(helper.glyphicon_for_flash_type(:notice)).to eq "glyphicon glyphicon-triangle-right alert-info"
    end

    it "maps failure correctly" do
      expect(helper.glyphicon_for_flash_type(:failure)).to eq "glyphicon glyphicon-exclamation-sign alert-danger"
    end

    it "maps something else to nil" do
      expect(helper.glyphicon_for_flash_type(:bogus)).to be_nil
    end
  end

end
