class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.references :dog, null: false, foreign_key: true
      t.date :date
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
