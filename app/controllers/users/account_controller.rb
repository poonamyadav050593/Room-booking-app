class Users::AccountController < ApplicationController

  def logged_user
    render json: current_user, status: :ok
  end
end
