class ChangeSecondDogReference < ActiveRecord::Migration[7.0]
  def change
    remove_reference :meetings, :second_dog, foreign_key: { to_table: :dogs }
    add_reference :meetings, :second_dog, foreign_key: { to_table: :dogs }, null: false

    remove_reference :matches, :second_dog, foreign_key: { to_table: :dogs }
    add_reference :matches, :second_dog, foreign_key: { to_table: :dogs }, null: false
  end
end
