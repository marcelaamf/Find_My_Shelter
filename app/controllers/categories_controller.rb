class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order(name: :asc)
    @shelters = Shelter.select(:id, :name, :address, :image).all.order(name: :asc)
    @shelters_test = Shelter.where(category_id: 1)
  
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
    @shelters = @category.shelters.order(name: :asc)
  end

end
