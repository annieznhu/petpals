class RemoveImageFromPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :image, :string
  end
end
