class AddBooksCopiesIndexes < ActiveRecord::Migration[7.0]
  def change
    add_index :books_copies, :book_id
    add_index :books_copies, :copy_id
  end
end
