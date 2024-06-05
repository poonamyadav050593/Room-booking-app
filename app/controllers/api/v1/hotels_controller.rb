class Api::V1::HotelsController < ApplicationController


  def hotel_list
    p params
  	@hotels = Hotel.all
  	render json: { hotels: @hotels }, status: :ok

  end	

end