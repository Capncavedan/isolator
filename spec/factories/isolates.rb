FactoryGirl.define do

  factory :isolate do
    age         50
    nosocomial  false
    icu         true
    association :shipment

    factory :random_isolate do
      age        { rand(125)  }
      nosocomial { [true, false].sample }
      icu        { [true, false].sample }
    end
  end

end
