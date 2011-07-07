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

describe PaymentWaysController do

  # This should return the minimal set of attributes required to create a valid
  # PaymentWay. As you add validations to PaymentWay, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all payment_ways as @payment_ways" do
      payment_way = PaymentWay.create! valid_attributes
      get :index
      assigns(:payment_ways).should eq([payment_way])
    end
  end

  describe "GET show" do
    it "assigns the requested payment_way as @payment_way" do
      payment_way = PaymentWay.create! valid_attributes
      get :show, :id => payment_way.id.to_s
      assigns(:payment_way).should eq(payment_way)
    end
  end

  describe "GET new" do
    it "assigns a new payment_way as @payment_way" do
      get :new
      assigns(:payment_way).should be_a_new(PaymentWay)
    end
  end

  describe "GET edit" do
    it "assigns the requested payment_way as @payment_way" do
      payment_way = PaymentWay.create! valid_attributes
      get :edit, :id => payment_way.id.to_s
      assigns(:payment_way).should eq(payment_way)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PaymentWay" do
        expect {
          post :create, :payment_way => valid_attributes
        }.to change(PaymentWay, :count).by(1)
      end

      it "assigns a newly created payment_way as @payment_way" do
        post :create, :payment_way => valid_attributes
        assigns(:payment_way).should be_a(PaymentWay)
        assigns(:payment_way).should be_persisted
      end

      it "redirects to the created payment_way" do
        post :create, :payment_way => valid_attributes
        response.should redirect_to(PaymentWay.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved payment_way as @payment_way" do
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentWay.any_instance.stub(:save).and_return(false)
        post :create, :payment_way => {}
        assigns(:payment_way).should be_a_new(PaymentWay)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentWay.any_instance.stub(:save).and_return(false)
        post :create, :payment_way => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested payment_way" do
        payment_way = PaymentWay.create! valid_attributes
        # Assuming there are no other payment_ways in the database, this
        # specifies that the PaymentWay created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PaymentWay.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => payment_way.id, :payment_way => {'these' => 'params'}
      end

      it "assigns the requested payment_way as @payment_way" do
        payment_way = PaymentWay.create! valid_attributes
        put :update, :id => payment_way.id, :payment_way => valid_attributes
        assigns(:payment_way).should eq(payment_way)
      end

      it "redirects to the payment_way" do
        payment_way = PaymentWay.create! valid_attributes
        put :update, :id => payment_way.id, :payment_way => valid_attributes
        response.should redirect_to(payment_way)
      end
    end

    describe "with invalid params" do
      it "assigns the payment_way as @payment_way" do
        payment_way = PaymentWay.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentWay.any_instance.stub(:save).and_return(false)
        put :update, :id => payment_way.id.to_s, :payment_way => {}
        assigns(:payment_way).should eq(payment_way)
      end

      it "re-renders the 'edit' template" do
        payment_way = PaymentWay.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentWay.any_instance.stub(:save).and_return(false)
        put :update, :id => payment_way.id.to_s, :payment_way => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested payment_way" do
      payment_way = PaymentWay.create! valid_attributes
      expect {
        delete :destroy, :id => payment_way.id.to_s
      }.to change(PaymentWay, :count).by(-1)
    end

    it "redirects to the payment_ways list" do
      payment_way = PaymentWay.create! valid_attributes
      delete :destroy, :id => payment_way.id.to_s
      response.should redirect_to(payment_ways_url)
    end
  end

end
