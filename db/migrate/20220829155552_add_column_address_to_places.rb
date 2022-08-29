class AddColumnAddressToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :address, :string
  end
end
