class AddLocationToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :city, :text
    add_column :reviews, :state, :text
  end
end
