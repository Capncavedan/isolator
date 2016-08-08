class Isolate < ApplicationRecord

  belongs_to :shipment

  validates :icu,        inclusion: { in: [true, false], message: "can't be blank" }
  validates :nosocomial, inclusion: { in: [true, false], message: "can't be blank" }
  validates :age,        presence: true, inclusion: { in: 0..125, message: "is not 0-125" }

end
