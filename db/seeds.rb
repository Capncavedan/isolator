raise "DANGER! DATA WILL BE DESTROYED!" unless Rails.env.development?

Shipment.delete_all
Isolate.delete_all

# set up hospital numbers
hospital_numbers = (100_000..200_000).to_a.sample(30)

hospital_numbers.each do |hospital_number|
  # set up some shipments for each hospital
  shipment_quantity = rand(20)+20

  - starting_number = 1
  shipment_quantity.times do
    print "."

    shipment = Shipment.new hospital_number: hospital_number,
      starting_number: starting_number,
      objective_code: %w(A B Q).sample,
      isolate_quantity: 20+rand(20)

    if shipment.objective_code == "B"
      shipment.organism = ["H. influenza", "M. catarrhalis"].sample
    end

    shipment.save

    starting_number += shipment.isolate_quantity
  end
end

# populate isolates for each shipment
Shipment.all.each do |shipment|
  shipment.isolate_quantity.times do
    print "."
    shipment.isolates.create! age: rand(125),
      nosocomial: ['Y', 'N'].sample,
      icu:        ['Y', 'N'].sample
  end
end

puts
puts "Complete.  #{Shipment.all.count} shipments; #{Isolate.all.count} isolates."
