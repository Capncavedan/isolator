class Report

  def self.hospital_stats
    hsh = Hash.new(0)
    hospital_stats_rows.each do |row|
      hospital_number, objective_code, shipment_count, isolate_count = row

      if hospital_number.blank? && objective_code.blank?
        # the grand total for shipments and isolates row
        hsh["shipment_info"]      = shipment_count
        hsh["isolate_info_total"] = isolate_count
      elsif objective_code.blank?
        # a total row for shipments and isolates for a hospital
        hsh["shipment_info_#{hospital_number}"]      = shipment_count
        hsh["isolate_info_total_#{hospital_number}"] = isolate_count
      elsif hospital_number.blank?
        # a total row for shipments and isolates
        hsh["objective_info_#{objective_code}"] = shipment_count
        hsh["isolate_info_#{objective_code}"]   = isolate_count
      else
        hsh["objective_info_#{objective_code}_#{hospital_number}"] = shipment_count
        hsh["isolate_info_#{objective_code}_#{hospital_number}"]   = isolate_count
      end
    end
    hsh
  end

  def self.shipment_hospital_numbers
    Shipment.distinct.pluck(:hospital_number).sort
  end


  private

  def self.hospital_stats_rows
    sql = <<-END_OF_SQL
SELECT hospital_number,
shipments.objective_code AS objective_code,
COUNT(DISTINCT shipments.id) AS objective_code_shipment_count,
COUNT(isolates.*) AS objective_code_isolate_count
FROM shipments
LEFT OUTER JOIN isolates ON isolates.shipment_id = shipments.id
GROUP BY CUBE( hospital_number, objective_code )
END_OF_SQL
    ActiveRecord::Base.connection.select_rows sql
  end

end
