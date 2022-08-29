class RemoveAdressFromPlace < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :adress, :string
  end
end
