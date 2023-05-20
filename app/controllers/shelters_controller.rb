class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all.order(created_at: :desc)
  end

  def show
    @shelter = Shelter.find params[:id]
  end

end
