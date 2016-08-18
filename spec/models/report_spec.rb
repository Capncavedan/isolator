RSpec.describe Report, type: :model do

  describe ".hospital_stats" do
    it "returns a hash" do
      stats = Report.hospital_stats
      expect(stats).to be_a Hash
    end

    it "returns the expected values from the database" do
      %w(A B Q).each_with_index do |objective_code, idx|
        s1 = FactoryGirl.create :shipment, hospital_number: "1234567", objective_code: objective_code
        s2 = FactoryGirl.create :shipment, hospital_number: "8675309", objective_code: objective_code
        isolate_qty = idx + 1
        isolate_qty.times do
          FactoryGirl.create :random_isolate, shipment: s1
          FactoryGirl.create :random_isolate, shipment: s2
        end
      end

      stats = Report.hospital_stats

      expect(stats["shipment_info_1234567"]).to eq 3
      expect(stats["shipment_info_8675309"]).to eq 3
      expect(stats["shipment_info"]).to eq 6

      expect(stats["objective_info_A_1234567"]).to eq 1
      expect(stats["objective_info_B_1234567"]).to eq 1
      expect(stats["objective_info_Q_1234567"]).to eq 1

      expect(stats["objective_info_A_8675309"]).to eq 1
      expect(stats["objective_info_B_8675309"]).to eq 1
      expect(stats["objective_info_Q_8675309"]).to eq 1

      expect(stats["isolate_info_A_1234567"]).to eq 1
      expect(stats["isolate_info_B_1234567"]).to eq 2
      expect(stats["isolate_info_Q_1234567"]).to eq 3
      expect(stats["isolate_info_total_1234567"]).to eq 6

      expect(stats["isolate_info_A_8675309"]).to eq 1
      expect(stats["isolate_info_B_8675309"]).to eq 2
      expect(stats["isolate_info_Q_8675309"]).to eq 3
      expect(stats["isolate_info_total_8675309"]).to eq 6

      expect(stats["objective_info_A"]).to eq 2
      expect(stats["objective_info_B"]).to eq 2
      expect(stats["objective_info_Q"]).to eq 2

      expect(stats["isolate_info_A"]).to eq 2
      expect(stats["isolate_info_B"]).to eq 4
      expect(stats["isolate_info_Q"]).to eq 6
      expect(stats["isolate_info_total"]).to eq 12
    end
  end

end
