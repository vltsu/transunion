require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OpfsController do

  # This should return the minimal set of attributes required to create a valid
  # Opf. As you add validations to Opf, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all opfs as @opfs" do
      opf = Opf.create! valid_attributes
      get :index
      assigns(:opfs).should eq([opf])
    end
  end

  describe "GET show" do
    it "assigns the requested opf as @opf" do
      opf = Opf.create! valid_attributes
      get :show, :id => opf.id.to_s
      assigns(:opf).should eq(opf)
    end
  end

  describe "GET new" do
    it "assigns a new opf as @opf" do
      get :new
      assigns(:opf).should be_a_new(Opf)
    end
  end

  describe "GET edit" do
    it "assigns the requested opf as @opf" do
      opf = Opf.create! valid_attributes
      get :edit, :id => opf.id.to_s
      assigns(:opf).should eq(opf)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Opf" do
        expect {
          post :create, :opf => valid_attributes
        }.to change(Opf, :count).by(1)
      end

      it "assigns a newly created opf as @opf" do
        post :create, :opf => valid_attributes
        assigns(:opf).should be_a(Opf)
        assigns(:opf).should be_persisted
      end

      it "redirects to the created opf" do
        post :create, :opf => valid_attributes
        response.should redirect_to(Opf.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved opf as @opf" do
        # Trigger the behavior that occurs when invalid params are submitted
        Opf.any_instance.stub(:save).and_return(false)
        post :create, :opf => {}
        assigns(:opf).should be_a_new(Opf)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Opf.any_instance.stub(:save).and_return(false)
        post :create, :opf => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested opf" do
        opf = Opf.create! valid_attributes
        # Assuming there are no other opfs in the database, this
        # specifies that the Opf created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Opf.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => opf.id, :opf => {'these' => 'params'}
      end

      it "assigns the requested opf as @opf" do
        opf = Opf.create! valid_attributes
        put :update, :id => opf.id, :opf => valid_attributes
        assigns(:opf).should eq(opf)
      end

      it "redirects to the opf" do
        opf = Opf.create! valid_attributes
        put :update, :id => opf.id, :opf => valid_attributes
        response.should redirect_to(opf)
      end
    end

    describe "with invalid params" do
      it "assigns the opf as @opf" do
        opf = Opf.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Opf.any_instance.stub(:save).and_return(false)
        put :update, :id => opf.id.to_s, :opf => {}
        assigns(:opf).should eq(opf)
      end

      it "re-renders the 'edit' template" do
        opf = Opf.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Opf.any_instance.stub(:save).and_return(false)
        put :update, :id => opf.id.to_s, :opf => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested opf" do
      opf = Opf.create! valid_attributes
      expect {
        delete :destroy, :id => opf.id.to_s
      }.to change(Opf, :count).by(-1)
    end

    it "redirects to the opfs list" do
      opf = Opf.create! valid_attributes
      delete :destroy, :id => opf.id.to_s
      response.should redirect_to(opfs_url)
    end
  end

end
