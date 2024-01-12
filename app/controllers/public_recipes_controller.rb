class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.where(is_public: true).order(updated_at: :desc)
  end
end
