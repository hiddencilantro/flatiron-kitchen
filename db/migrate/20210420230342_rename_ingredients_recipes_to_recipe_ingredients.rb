class RenameIngredientsRecipesToRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    rename_table :ingredients_recipes, :recipe_ingredients
  end
end
