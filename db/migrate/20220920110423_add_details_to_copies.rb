class AddDetailsToCopies < ActiveRecord::Migration[7.0]
  def change
    add_column :copies, :borrower, :string
    add_column :copies, :due_date, :string
  end
end
