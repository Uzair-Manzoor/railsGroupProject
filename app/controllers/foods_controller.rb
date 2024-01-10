class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food_form = Foods.new
  end

  def create
    @food_form = current_user.foods.build(food_form_params)
    if @food_form.save
      flash[:success] = 'Food saved successfully'
      redirect_to foods_path
    else
      flash[:error] = 'Food Not Saved, try again later'
      puts @food_form.errors.full_messages
      render :new
    end
  end

  private

  def food_form_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
