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

describe PaymentDocsController do

  # This should return the minimal set of attributes required to create a valid
  # PaymentDoc. As you add validations to PaymentDoc, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all payment_docs as @payment_docs" do
      payment_doc = PaymentDoc.create! valid_attributes
      get :index
      assigns(:payment_docs).should eq([payment_doc])
    end
  end

  describe "GET show" do
    it "assigns the requested payment_doc as @payment_doc" do
      payment_doc = PaymentDoc.create! valid_attributes
      get :show, :id => payment_doc.id.to_s
      assigns(:payment_doc).should eq(payment_doc)
    end
  end

  describe "GET new" do
    it "assigns a new payment_doc as @payment_doc" do
      get :new
      assigns(:payment_doc).should be_a_new(PaymentDoc)
    end
  end

  describe "GET edit" do
    it "assigns the requested payment_doc as @payment_doc" do
      payment_doc = PaymentDoc.create! valid_attributes
      get :edit, :id => payment_doc.id.to_s
      assigns(:payment_doc).should eq(payment_doc)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PaymentDoc" do
        expect {
          post :create, :payment_doc => valid_attributes
        }.to change(PaymentDoc, :count).by(1)
      end

      it "assigns a newly created payment_doc as @payment_doc" do
        post :create, :payment_doc => valid_attributes
        assigns(:payment_doc).should be_a(PaymentDoc)
        assigns(:payment_doc).should be_persisted
      end

      it "redirects to the created payment_doc" do
        post :create, :payment_doc => valid_attributes
        response.should redirect_to(PaymentDoc.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved payment_doc as @payment_doc" do
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentDoc.any_instance.stub(:save).and_return(false)
        post :create, :payment_doc => {}
        assigns(:payment_doc).should be_a_new(PaymentDoc)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentDoc.any_instance.stub(:save).and_return(false)
        post :create, :payment_doc => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested payment_doc" do
        payment_doc = PaymentDoc.create! valid_attributes
        # Assuming there are no other payment_docs in the database, this
        # specifies that the PaymentDoc created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PaymentDoc.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => payment_doc.id, :payment_doc => {'these' => 'params'}
      end

      it "assigns the requested payment_doc as @payment_doc" do
        payment_doc = PaymentDoc.create! valid_attributes
        put :update, :id => payment_doc.id, :payment_doc => valid_attributes
        assigns(:payment_doc).should eq(payment_doc)
      end

      it "redirects to the payment_doc" do
        payment_doc = PaymentDoc.create! valid_attributes
        put :update, :id => payment_doc.id, :payment_doc => valid_attributes
        response.should redirect_to(payment_doc)
      end
    end

    describe "with invalid params" do
      it "assigns the payment_doc as @payment_doc" do
        payment_doc = PaymentDoc.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentDoc.any_instance.stub(:save).and_return(false)
        put :update, :id => payment_doc.id.to_s, :payment_doc => {}
        assigns(:payment_doc).should eq(payment_doc)
      end

      it "re-renders the 'edit' template" do
        payment_doc = PaymentDoc.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PaymentDoc.any_instance.stub(:save).and_return(false)
        put :update, :id => payment_doc.id.to_s, :payment_doc => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested payment_doc" do
      payment_doc = PaymentDoc.create! valid_attributes
      expect {
        delete :destroy, :id => payment_doc.id.to_s
      }.to change(PaymentDoc, :count).by(-1)
    end

    it "redirects to the payment_docs list" do
      payment_doc = PaymentDoc.create! valid_attributes
      delete :destroy, :id => payment_doc.id.to_s
      response.should redirect_to(payment_docs_url)
    end
  end

end
