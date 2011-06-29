class BetaUsersController < ApplicationController
  def create
    BetaUser.create!(params[:beta_user])
  end

  def new
    @beta_user = BetaUser.new
  end
end
