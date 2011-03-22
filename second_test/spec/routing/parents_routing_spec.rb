require "spec_helper"

describe ParentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/parents" }.should route_to(:controller => "parents", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/parents/new" }.should route_to(:controller => "parents", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/parents/1" }.should route_to(:controller => "parents", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/parents/1/edit" }.should route_to(:controller => "parents", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/parents" }.should route_to(:controller => "parents", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/parents/1" }.should route_to(:controller => "parents", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/parents/1" }.should route_to(:controller => "parents", :action => "destroy", :id => "1")
    end

  end
end
