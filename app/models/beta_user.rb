class BetaUser < ActiveRecord::Base
  validates_presence_of :name, :email, :wedding_date, :wedding_city, :wedding_state
end
