class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :adress
      t.string :image
      t.integer :rating

      t.timestamps
    end
  end
end
