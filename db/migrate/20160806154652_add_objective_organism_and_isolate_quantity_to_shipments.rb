class AddObjectiveOrganismAndIsolateQuantityToShipments < ActiveRecord::Migration[5.0]
  def change
    add_column :shipments, :objective_code,   :string
    add_column :shipments, :organism,         :string
    add_column :shipments, :isolate_quantity, :integer
  end
end
