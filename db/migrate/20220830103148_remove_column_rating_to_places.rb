class RemoveColumnRatingToPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :rating, :integer
  end
end
