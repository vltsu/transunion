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

describe IncomeSectionsController do

  # This should return the minimal set of attributes required to create a valid
  # IncomeSection. As you add validations to IncomeSection, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all income_sections as @income_sections" do
      income_section = IncomeSection.create! valid_attributes
      get :index
      assigns(:income_sections).should eq([income_section])
    end
  end

  describe "GET show" do
    it "assigns the requested income_section as @income_section" do
      income_section = IncomeSection.create! valid_attributes
      get :show, :id => income_section.id.to_s
      assigns(:income_section).should eq(income_section)
    end
  end

  describe "GET new" do
    it "assigns a new income_section as @income_section" do
      get :new
      assigns(:income_section).should be_a_new(IncomeSection)
    end
  end

  describe "GET edit" do
    it "assigns the requested income_section as @income_section" do
      income_section = IncomeSection.create! valid_attributes
      get :edit, :id => income_section.id.to_s
      assigns(:income_section).should eq(income_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new IncomeSection" do
        expect {
          post :create, :income_section => valid_attributes
        }.to change(IncomeSection, :count).by(1)
      end

      it "assigns a newly created income_section as @income_section" do
        post :create, :income_section => valid_attributes
        assigns(:income_section).should be_a(IncomeSection)
        assigns(:income_section).should be_persisted
      end

      it "redirects to the created income_section" do
        post :create, :income_section => valid_attributes
        response.should redirect_to(IncomeSection.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved income_section as @income_section" do
        # Trigger the behavior that occurs when invalid params are submitted
        IncomeSection.any_instance.stub(:save).and_return(false)
        post :create, :income_section => {}
        assigns(:income_section).should be_a_new(IncomeSection)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        IncomeSection.any_instance.stub(:save).and_return(false)
        post :create, :income_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested income_section" do
        income_section = IncomeSection.create! valid_attributes
        # Assuming there are no other income_sections in the database, this
        # specifies that the IncomeSection created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        IncomeSection.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => income_section.id, :income_section => {'these' => 'params'}
      end

      it "assigns the requested income_section as @income_section" do
        income_section = IncomeSection.create! valid_attributes
        put :update, :id => income_section.id, :income_section => valid_attributes
        assigns(:income_section).should eq(income_section)
      end

      it "redirects to the income_section" do
        income_section = IncomeSection.create! valid_attributes
        put :update, :id => income_section.id, :income_section => valid_attributes
        response.should redirect_to(income_section)
      end
    end

    describe "with invalid params" do
      it "assigns the income_section as @income_section" do
        income_section = IncomeSection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        IncomeSection.any_instance.stub(:save).and_return(false)
        put :update, :id => income_section.id.to_s, :income_section => {}
        assigns(:income_section).should eq(income_section)
      end

      it "re-renders the 'edit' template" do
        income_section = IncomeSection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        IncomeSection.any_instance.stub(:save).and_return(false)
        put :update, :id => income_section.id.to_s, :income_section => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested income_section" do
      income_section = IncomeSection.create! valid_attributes
      expect {
        delete :destroy, :id => income_section.id.to_s
      }.to change(IncomeSection, :count).by(-1)
    end

    it "redirects to the income_sections list" do
      income_section = IncomeSection.create! valid_attributes
      delete :destroy, :id => income_section.id.to_s
      response.should redirect_to(income_sections_url)
    end
  end

end
