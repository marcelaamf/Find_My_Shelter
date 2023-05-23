class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all.order(name: :asc)
  end

  def show
    @shelter = Shelter.find params[:id]
  end
  
end
