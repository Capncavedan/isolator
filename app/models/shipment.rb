class Shipment < ApplicationRecord

  validates :hospital_number,  presence: true
  validates :starting_number,  presence: true
  validates :isolate_quantity, presence: true
  validates :objective_code,   presence: true, inclusion: {in: %w(A B Q)}

  before_validation :normalize_objective_code_and_organism


  private

  def normalize_objective_code_and_organism
    if objective_code == "B / H. influenza"
      self.objective_code = "B"
      self.organism = "H. influenza"
    end

    if objective_code == "B / M. catarrhalis"
      self.objective_code = "B"
      self.organism = "M. catarrhalis"
    end
  end

end
