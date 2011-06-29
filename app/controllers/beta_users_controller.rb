class BetaUsersController < ApplicationController
  def create
    BetaUser.create!(params[:beta_user])
  end
end
