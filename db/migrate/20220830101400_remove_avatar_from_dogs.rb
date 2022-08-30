class RemoveAvatarFromDogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :dogs, :avatar, :string
  end
end
