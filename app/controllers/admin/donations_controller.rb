class Admin::DonationsController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
                               password: ENV["HTTP_BASIC_PASSWORD"],
                               if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }

  def index
  if params[:start_date].present? && params[:end_date].present?
    start_date = Date.parse(params[:start_date])
    end_date = Date.parse(params[:end_date])
    @donations = Donation.where(created_at: start_date.beginning_of_day..end_date.end_of_day)
  else
    @donations = Donation.order(id: :desc).all
  end
end

def filter
  if params[:start_date].present? && params[:end_date].present?
    start_date = Date.parse(params[:start_date])
    end_date = Date.parse(params[:end_date])
    @donations = Donation.where(created_at: start_date.beginning_of_day..end_date.end_of_day)
  else
    @donations = Donation.order(id: :desc).all
  end

  render 'index'
end
                              
end
