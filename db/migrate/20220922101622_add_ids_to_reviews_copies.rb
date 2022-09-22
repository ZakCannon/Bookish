class AddIdsToReviewsCopies < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :book_id
    remove_column :copies, :book_id
    add_reference :reviews, :book, null: true, foreign_key: true
    add_reference :copies, :book, null: true , foreign_key: true
  end
end
