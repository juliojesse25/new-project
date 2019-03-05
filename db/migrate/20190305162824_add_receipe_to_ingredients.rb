class AddReceipeToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_reference :ingredients, :receipe, foreign_key: true
  end
end
