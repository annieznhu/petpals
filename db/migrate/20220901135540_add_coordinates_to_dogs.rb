class AddCoordinatesToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :latitude, :float
    add_column :dogs, :longitude, :float
  end
end
