class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :date_published, presence: true
  validates :price, presence: true
end
