class AddForeignKeyToReviews < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :reviews, :restaurants, column: :restaurant_id
  end
end
