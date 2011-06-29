class BetaUsersController < ApplicationController
  def create
    @beta_user = BetaUser.new(params[:beta_user])
    if !@beta_user.save
      render :action => "new"
    end
  end

  def new
    @beta_user = BetaUser.new
  end
end
