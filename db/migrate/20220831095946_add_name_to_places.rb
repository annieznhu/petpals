class AddNameToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :name, :string
  end
end
