class Isolate < ApplicationRecord

  belongs_to :shipment

  validates :icu,        presence: true
  validates :nosocomial, presence: true
  validates :age,        presence: true, inclusion: { in: 0..125, message: "is not 0-125" }

end
