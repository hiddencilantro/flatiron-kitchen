class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show, :edit, :update, :destroy]

    def new
        @recipe = Recipe.new
    end

    def create
        recipe = Recipe.new(recipe_params)
        
        if recipe.save
            redirect_to recipe_path(recipe)
        else
            render :new
        end
    end

    def show
    end

    def update
        if @recipe.update(recipe_params)
            redirect_to recipe_path(@recipe)
        else
            render :edit
        end
    end

    private

    def set_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name, :ingredient_ids => [])
    end
end
