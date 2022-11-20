class RemoveCommentFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :comment, :string
  end
end
