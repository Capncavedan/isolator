class CreateShipments < ActiveRecord::Migration[5.0]
  def change
    create_table :shipments do |t|
      t.integer :hospital_number
      t.integer :starting_number

      t.timestamps
    end

    add_index :shipments, :hospital_number
  end
end
