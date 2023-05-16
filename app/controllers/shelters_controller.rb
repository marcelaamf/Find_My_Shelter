class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all.order(created_at: :desc)
  end

  def show
    @shelters = Shelter.find params[:id]
  end
  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
      redirect_to [:admin, :shelter], notice: 'Shelter created!'
    else
      render :new
    end
  end

end
