class ShoppingListsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
  end
end
