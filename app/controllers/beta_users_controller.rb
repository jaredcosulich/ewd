require 'iconv'
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

  def csv
    filename = "ewd_users.csv"
    content = BetaUser.to_csv
    content = BetaUser::BOM + Iconv.conv("utf-16le", "utf-8", content)
    send_data content, :filename => filename
  end
end
