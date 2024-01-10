class RecipesController < ApplicationController
  def new
    @recipe_form = Recipe.new
  end

  def create
    @recipe_form = current_user.recipes.build(recipe_form_params)
    if @recipe_form.save
      flash[:success] = 'Recipe Successfully Added'
      redirect_to recipes_path
    else
      flash[:error] = 'Recipe Not Saved, Try again later'
      render :new
    end
  end
end
