class API::V1::HomeController < ApplicationController
  def index
    @metrics = {
        total_users: User.count
    }
    render json: @metrics, status: :ok
  end
end
