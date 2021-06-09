class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, precense: true
  validates :rating, precense: true
  validates :rating, format: { with: /[0-5]/ }
end

# When a restaurant is destroyed, all of its reviews must be destroyed as well.
