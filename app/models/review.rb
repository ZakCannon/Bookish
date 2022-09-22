class Review < ApplicationRecord
  belongs_to :book

  validates :name, presence: true
  validates :content, presence: true
  validates :date, presence: true
  validates :user_id, presence:true
end
