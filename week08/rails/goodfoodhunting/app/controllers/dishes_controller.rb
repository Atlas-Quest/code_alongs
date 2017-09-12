class DishesController < ApplicationController


  def index
    @dishes = Dish.all
  end
  def new
  end
  def create
    dish = Dish.new
    dish.name = params[:dish]
    dish.image_url = params[:image_url]
    dish.save
    redirect_to '/dishes'
  end
  def edit
    @dish = Dish.find(params[:id])
    render :edit
  end
  def show
    @dish = Dish.find(params[:id])

  end
  def update
    @dish = Dish.find(params[:id])
    @dish.name = params[:name]
    @dish.image_url = params[:image_url]
    @dish.save
    redirect_to '/dishes'
  end

end
