class MealSerializer < ActiveModel::Serializer
  attributes :id, :amount, :unit
  has_one :receipe
  has_one :ingredient
end
