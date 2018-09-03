class Api::V1::UsersController < Api::V1::ApplicationController
  def show
    render json: User.find(params[:id])
  end
end
