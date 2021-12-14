class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  cat = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {in: cat}
end
