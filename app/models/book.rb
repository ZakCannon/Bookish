class Book < ApplicationRecord
  has_many :copies, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true

end
