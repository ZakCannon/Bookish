class JoinBooksCopies < ActiveRecord::Migration[7.0]
  def change
    create_join_table :copies, :books
  end
end
