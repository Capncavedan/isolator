module ShipmentHelper

  def shipment_objective_codes_with_organisms
    [
      "A",
      "B / H. influenza",
      "B / M. catarrhalis",
      "Q"
    ]
  end

  def selected_shipment_objective_code_with_organism(shipment)
    if shipment.objective_code == "B"
      if shipment.organism.present?
        "#{shipment.objective_code} / #{shipment.organism}"
      end
    else
      shipment.objective_code
    end
  end

end
