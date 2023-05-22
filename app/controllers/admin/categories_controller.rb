class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
  password: ENV["HTTP_BASIC_PASSWORD"],
  if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }
  def index
    @category = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    
    # Destroy associated shelters
    @category.shelters.destroy_all

    @category.destroy

    redirect_to root_path
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end

end
