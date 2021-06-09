class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end

# When a restaurant is destroyed, all of its reviews must be destroyed as well.
#  la validation sert à vérifier ta donnée avt qu'elle soit save dans t