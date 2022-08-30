class Add2ndDogReferencesToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_reference :meetings, :second_dog, foreign_key: { to_table: :dogs }
  end
end
