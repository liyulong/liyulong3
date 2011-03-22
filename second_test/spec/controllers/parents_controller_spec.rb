require 'spec_helper'

describe ParentsController do

  def mock_parent(stubs={})
    @mock_parent ||= mock_model(Parent, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all parents as @parents" do
      Parent.stub(:all) { [mock_parent] }
      get :index
      assigns(:parents).should eq([mock_parent])
    end
  end

  describe "GET show" do
    it "assigns the requested parent as @parent" do
      Parent.stub(:find).with("37") { mock_parent }
      get :show, :id => "37"
      assigns(:parent).should be(mock_parent)
    end
  end

  describe "GET new" do
    it "assigns a new parent as @parent" do
      Parent.stub(:new) { mock_parent }
      get :new
      assigns(:parent).should be(mock_parent)
    end
  end

  describe "GET edit" do
    it "assigns the requested parent as @parent" do
      Parent.stub(:find).with("37") { mock_parent }
      get :edit, :id => "37"
      assigns(:parent).should be(mock_parent)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created parent as @parent" do
        Parent.stub(:new).with({'these' => 'params'}) { mock_parent(:save => true) }
        post :create, :parent => {'these' => 'params'}
        assigns(:parent).should be(mock_parent)
      end

      it "redirects to the created parent" do
        Parent.stub(:new) { mock_parent(:save => true) }
        post :create, :parent => {}
        response.should redirect_to(parent_url(mock_parent))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved parent as @parent" do
        Parent.stub(:new).with({'these' => 'params'}) { mock_parent(:save => false) }
        post :create, :parent => {'these' => 'params'}
        assigns(:parent).should be(mock_parent)
      end

      it "re-renders the 'new' template" do
        Parent.stub(:new) { mock_parent(:save => false) }
        post :create, :parent => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested parent" do
        Parent.should_receive(:find).with("37") { mock_parent }
        mock_parent.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :parent => {'these' => 'params'}
      end

      it "assigns the requested parent as @parent" do
        Parent.stub(:find) { mock_parent(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:parent).should be(mock_parent)
      end

      it "redirects to the parent" do
        Parent.stub(:find) { mock_parent(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(parent_url(mock_parent))
      end
    end

    describe "with invalid params" do
      it "assigns the parent as @parent" do
        Parent.stub(:find) { mock_parent(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:parent).should be(mock_parent)
      end

      it "re-renders the 'edit' template" do
        Parent.stub(:find) { mock_parent(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested parent" do
      Parent.should_receive(:find).with("37") { mock_parent }
      mock_parent.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the parents list" do
      Parent.stub(:find) { mock_parent }
      delete :destroy, :id => "1"
      response.should redirect_to(parents_url)
    end
  end

end
