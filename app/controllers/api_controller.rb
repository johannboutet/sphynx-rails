class ApiController < ApplicationController
  before_action :authenticate_user!, only: :protected_route

  def index
    render nothing: true
  end

  def protected_route
    render json: {
      id: current_user.id,
      first_name: current_user.first_name,
      last_name: current_user.last_name
    }
  end
end
