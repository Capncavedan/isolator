class RemoveNullFalseFromBooleans < ActiveRecord::Migration[5.0]
  def change
    change_column :isolates, :icu,        :boolean, null: true
    change_column :isolates, :nosocomial, :boolean, null: true
  end
end
