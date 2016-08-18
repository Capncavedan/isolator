class Report

  def self.hospital_stats
    hsh = Hash.new(0)
    hospital_stats_rows.each do |row|
      hospital_number, objective_code, objective_code_shipment_count, objective_code_isolate_count = row

      hsh["shipment_info_#{hospital_number}"] += objective_code_shipment_count
      hsh["shipment_info"] += objective_code_shipment_count

      hsh["objective_info_#{objective_code}_#{hospital_number}"] += objective_code_shipment_count
      hsh["objective_info_#{objective_code}"] += objective_code_shipment_count

      hsh["isolate_info_#{objective_code}_#{hospital_number}"] += objective_code_isolate_count
      hsh["isolate_info_#{objective_code}"] += objective_code_isolate_count
      hsh["isolate_info_total_#{hospital_number}"] += objective_code_isolate_count
      hsh["isolate_info_total"] += objective_code_isolate_count
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
GROUP BY 1,2
ORDER BY 1,2
END_OF_SQL
    ActiveRecord::Base.connection.select_rows sql
  end

end
