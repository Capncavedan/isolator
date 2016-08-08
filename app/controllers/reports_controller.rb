class ReportsController < ApplicationController

  def hospital_stats
    @hospital_numbers = Report.shipment_hospital_numbers
    @hospital_stats   = Report.hospital_stats
  end

end
