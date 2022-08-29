class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :species
      t.string :temper
      t.references :user, null: false, foreign_key: true
      t.string :avatar
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
