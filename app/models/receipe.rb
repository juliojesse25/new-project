class Receipe < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :ingredients, through: :meals
end
