class Shipment < ApplicationRecord

  validates :hospital_number,  presence: true
  validates :starting_number,  presence: true
  validates :isolate_quantity, presence: true
  validates :objective_code,   presence: true, inclusion: {in: %w(A B Q)}

end
