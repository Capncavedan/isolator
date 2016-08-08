FactoryGirl.define do

  factory :shipment do
    objective_code   "A"
    hospital_number  { rand(20)  }
    starting_number  { rand(100) }
    isolate_quantity { 10+rand(10) }

    factory :objective_a_shipment do
    end

    factory :objective_q_shipment do
      objective_code "Q"
    end
  end

end
