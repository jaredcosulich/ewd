require 'spec_helper'

describe BetaUsersController do

  describe "#create" do
    it "should create a new beta user" do
      post :create, :beta_user => {
        :name => "A User",
        :email => "user@example.com",
        :wedding_date => "Fall 2012",
        :wedding_city => "San Francisco",
        :wedding_state => "CA"
      }

      response.should be_success
      beta_user = BetaUser.first
      beta_user.name.should == "A User"
      beta_user.email.should == "user@example.com"
      beta_user.wedding_date.should == "Fall 2012"
      beta_user.wedding_city.should == "San Francisco"
      beta_user.wedding_state.should == "CA"
    end

    it "should render the form on validation failure" do
      post :create, :beta_user => {
        :name => "",
        :email => "",
        :wedding_date => "",
        :wedding_city => "",
        :wedding_state => ""
      }

      response.should be_success
      BetaUser.count.should be_zero

      assigns(:beta_user).errors.should_not be_empty
    end
  end

  describe "#new" do
    it "should work" do
      get :new
      response.should be_success
    end
  end

  describe "#csv" do
    it "should render all beta users in csv format" do
      get :csv
      response.should be_success
    end
  end

end
