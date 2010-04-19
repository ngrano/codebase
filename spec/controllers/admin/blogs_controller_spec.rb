require 'spec_helper'

describe Admin::BlogsController do
  
  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
      assigns[:blog].should be_kind_of(Blog)
      assigns[:blog].should be_new_record
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

end
