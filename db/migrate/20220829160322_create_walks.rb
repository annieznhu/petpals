class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.date :date
      t.references :place, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
