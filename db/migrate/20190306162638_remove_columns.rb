class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :unit
    remove_column :ingredients, :receipe_id
  end
end
