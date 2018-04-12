class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.build(name: 'test')
    @recipe.ingredients.build(name: 'another_test')
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end
end
