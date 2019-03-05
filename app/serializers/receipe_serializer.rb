class ReceipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :ingredients
end
