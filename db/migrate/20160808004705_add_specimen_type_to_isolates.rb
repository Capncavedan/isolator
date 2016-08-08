class AddSpecimenTypeToIsolates < ActiveRecord::Migration[5.0]
  def change
    add_column :isolates, :specimen_type, :string
  end
end
