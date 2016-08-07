class CreateIsolates < ActiveRecord::Migration[5.0]
  def change
    create_table :isolates do |t|
      t.integer :shipment_id
      t.string  :jim_number
      t.string  :code_number
      t.string  :accession_number
      t.string  :organism
      t.date    :date_of_admission
      t.date    :date_of_culture
      t.string  :source
      t.string  :sex
      t.integer :age
      t.string  :service
      t.string  :primary_diagnosis
      t.boolean :icu, null: false
      t.boolean :nosocomial, null: false
    end
    add_index :isolates, :shipment_id
  end
end
