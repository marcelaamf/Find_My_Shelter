class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order(created_at: :desc)
    @shelters = Shelter.select(:id, :name, :address).all

  
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
    @shelters = @category.shelters.order(created_at: :desc)
  end

end
