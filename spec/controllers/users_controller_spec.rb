require 'spec_helper'

describe UsersController do
  render_views
  
  describe "GET 'login'" do
    it "should be successful" do
      get :login
      response.should be_success
    end
  end
  
  describe "GET 'logout'" do
    it "should be successful" do
      get :logout
      response.should be_success
    end
  end
  
end