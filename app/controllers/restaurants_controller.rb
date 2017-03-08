class RestaurantsController < ApplicationController
 def index
    @restaurants = Restaurant.all

  end

  def show
    @restaurant = restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    @restaurant = restaurant.find(params[:id])
  end

  def update
    @restaurant = restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end

  def set_restaurant
    @restaurant = restaurant.find(params[:id])
  end
end
