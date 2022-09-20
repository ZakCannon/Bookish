class RemoveUnneededAttributes < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :book_title
    remove_column :books, :book_author
    remove_column :books, :book_isbn
  end
end
