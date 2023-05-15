class Admin::SheltersController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
  password: ENV["HTTP_BASIC_PASSWORD"],
  if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }
  def index
    @shelters = Shelter.order(id: :desc).all
  end

  def new
    @shelters = Shelter.new
  end

  def create
    @shelters = Shelter.new(product_params)

    if @shelters.save
      redirect_to [:admin, :shelters], notice: 'Shelter created!'
    else
      render :new
    end
  end

  def destroy
    @shelter = Shelter.find params[:id]
    @shelter.destroy
    redirect_to [:admin, :shelters], notice: 'Shelter deleted!'
  end

  private

  def shelter_params
    params.require(:shelter).permit(
      :name,
      :address,
      :category_id,
      :current_residents,
    )
  end

end
