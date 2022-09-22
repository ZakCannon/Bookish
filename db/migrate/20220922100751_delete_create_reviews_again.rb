class DeleteCreateReviewsAgain < ActiveRecord::Migration[7.0]
  def change
    drop_table :reviews

    create_table :reviews do |t|
      t.belongs_to :book
      t.string :name
      t.string :date
      t.string :content

      t.timestamps
      t.datetime :published_at
    end
  end
end