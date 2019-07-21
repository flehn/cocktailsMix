class UpdateDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :ingredients_id
    remove_column :doses, :cocktails_id

    add_reference :doses, :cocktail, index: true
    add_reference :doses, :ingredient, index: true
  end
end
