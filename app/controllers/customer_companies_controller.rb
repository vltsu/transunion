# encoding: UTF-8
class CustomerCompaniesController < ApplicationController
  before_filter do
    #Передача params в модель
    CustomerCompany.params = params[:customer_company]
  end

  # GET /customer_companies
  def index
    @customer_companies = CustomerCompany.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /customer_companies/1
  def show
    @customer_company = CustomerCompany.find(params[:id])
  end

  # GET /customer_companies/new
  def new
    @customer_company = CustomerCompany.new
  end

  # GET /customer_companies/1/edit
  def edit
    @customer_company = CustomerCompany.find(params[:id])
  end

  # POST /customer_companies
  def create
    @customer_company = CustomerCompany.new(params[:customer_company])
 
    if @customer_company.save
      redirect_to({:action => 'index'}, {:notice => 'Компания заказчик добавлена'}) 
    else
      render :action => "new" 
    end
  end

  # PUT /customer_companies/1
  def update
    @customer_company = CustomerCompany.find(params[:id])

    if @customer_company.update_attributes(params[:customer_company])
      redirect_to(@customer_company, :notice => 'Изменения внесены') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /customer_companies/1
  def destroy
    @customer_company = CustomerCompany.find(params[:id])
    @customer_company.destroy

    redirect_to(customer_companies_url)
  end

end
