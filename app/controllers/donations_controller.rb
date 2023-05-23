class DonationsController < ApplicationController
  helper_method :calculate_donation_amount

  def index
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
  end

  def create
    begin
      stripe_charge = perform_stripe_charge(params[:stripeToken], donation_params[:donation_amount])
      donation = Donation.new(
        email: donation_params[:email],
        total_cents: calculate_donation_amount(donation_params[:donation_amount]),
        stripe_charge_id: stripe_charge.id,
        shelter_id: donation_params[:shelter_id] # Assign the shelter_id value
      )
  
      donation.save!
      redirect_to new_donation_path, notice: 'Thank you for your donation!'
    rescue Stripe::CardError => e
      redirect_to new_donation_path, flash: { error: e.message }
    end
  end

  def perform_stripe_charge(token, donation_amount)
    amount_in_cents = (donation_amount.to_f * 100).round
    amount_in_cents = 100 if amount_in_cents < 100
    Stripe::Charge.create(
      source:      token,
      amount:      amount_in_cents,
      description: "Thank you for your donation",
      currency:    'cad'
    )
  end

  def donation_params
    params.require(:donation).permit(:donation_amount_cents, :shelter_id)
  end

  def filter
    start_date = params[:start_date]
    end_date = params[:end_date]

    @donations = Donation.where(created_at: start_date..end_date)
  end

  def calculate_donation_amount(donation_amount)
    amount = donation_amount.to_f
    amount >= 1 ? amount.to_i : 0
  end
end
