class ReportsController < ApplicationController

  def hospital_stats
    @hospital_numbers = Shipment.distinct.pluck(:hospital_number).sort
  end

end
