class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.new
    @recipe.ingredients.new
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  def recipe_params
    params.require(:recipes).permit(:title, ingredients_attributes:[:name, :quantity])
  end 
end
