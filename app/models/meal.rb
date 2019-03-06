class Meal < ApplicationRecord
  belongs_to :receipe
  belongs_to :ingredient
end
