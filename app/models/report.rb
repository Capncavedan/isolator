class Report

  def self.hospital_stats
    hsh = Hash.new(0)

    shipment_hospital_numbers.each do |hospital_number|
      # shipment count for hospital
      hsh["shipment_info_#{hospital_number}"] = Shipment.where(hospital_number: hospital_number).count

      # objective counts for hospital
      %w(A B Q).each do |objective_code|
        hsh["objective_info_#{objective_code}_#{hospital_number}"] = Shipment.where(hospital_number: hospital_number, objective_code: objective_code).count
      end

      # isolate counts for hospital
      %w(A B Q).each do |objective_code|
        hsh["isolate_info_#{objective_code}_#{hospital_number}"] = Shipment.joins(:isolates).where(hospital_number: hospital_number, objective_code: objective_code).count
      end
      hsh["isolate_info_total_#{hospital_number}"] = Shipment.joins(:isolates).where(hospital_number: hospital_number).count
    end

    # shipment count for ALL hospitals
    hsh["shipment_info"] = Shipment.count

    # objective counts for ALL hospitals
    %w(A B Q).each do |objective_code|
      hsh["objective_info_#{objective_code}"] = Shipment.where(objective_code: objective_code).count
    end

    # isolate counts for ALL hospitals
    %w(A B Q).each do |objective_code|
      hsh["isolate_info_#{objective_code}"] = Shipment.joins(:isolates).where(objective_code: objective_code).count
    end
    hsh["isolate_info_total"] = Shipment.joins(:isolates).count

    hsh
  end

  def self.shipment_hospital_numbers
    Shipment.distinct.pluck(:hospital_number).sort
  end

end
