require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App | "
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have 'Home' in the title" do
      get 'home'
      response.should have_selector(:title, :content => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have 'Contact' in the title" do
      get 'contact'
      response.should have_selector(:title, :content => @base_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have 'About' in the title" do
      get 'about'
      response.should have_selector(:title, :content => @base_title + "About")
    end
  end

  describe "GET 'help'" do
    it "should be succesful" do
      get 'help'
      response.should be_success
    end
    it "should have 'Help' in the title" do
      get 'help'
      response.should have_selector(:title, :content => @base_title + "Help")
    end
  end

end
