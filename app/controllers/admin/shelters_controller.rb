class Admin::SheltersController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
  password: ENV["HTTP_BASIC_PASSWORD"],
  if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }
  def index
    @shelters = Shelter.order(id: :desc).all
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
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
      :description,
      :address,
      :category_id,
      :phone,
      :email,
      :website,
      :accept_man,
      :men_capacity,
      :current_men,
      :accept_woman,
      :women_capacity,
      :current_women,
      :accept_kids,
      :children_capacity,
      :current_children,
      :youth_only,
      :clothing,
      :restroom_service,
      :counselling_service,
      :cafeteria
    )
  end

end
