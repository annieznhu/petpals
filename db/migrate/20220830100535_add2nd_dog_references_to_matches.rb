class Add2ndDogReferencesToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :second_dog, foreign_key: { to_table: :dogs }
  end
end
