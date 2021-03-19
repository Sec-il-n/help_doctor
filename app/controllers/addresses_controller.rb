class AddressesController < ApplicationController
  def index
  end
  private
  def search
    latitude = params[:latitude]
    longitude = params[:llongitude]

    @places = Address.clinic.allwithin(2, origin: [latitude, longtitude])
  end
end
