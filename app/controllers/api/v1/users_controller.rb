class Api::V1::UsersController < ApplicationController
  def create
    user ||= User.find_or_create_by(id: params[:id])
  end
end
