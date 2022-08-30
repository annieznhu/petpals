class AddColumnToysToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :toys, :string, array: true, default: []
  end
end
