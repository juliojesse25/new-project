class Ingredient < ApplicationRecord
  # belongs_to :receipe
  has_many :meals, dependent: :destroy
  has_many :receipes, through: :meals
end
