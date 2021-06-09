class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, precense: true
  validates :address, precense: true
  validates :category, precense: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end

# When a restaurant is destroyed, all of its reviews must be destroyed as well.
