# encoding: UTF-8
class CustomerCompaniesController < ApplicationController
  before_filter :standartise_fields, :only => [:update, :create]

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

  protected

  # Решение проблемы с '.' и ','
  def standartise_fields
    params[:customer_company][:respons_refuse_loading_day].sub!(/,/,'.').to_f
    params[:customer_company][:respons_idle_excessively_hours].sub!(/,/,'.').to_f
    params[:customer_company][:respons_idle_excessively_percent].sub!(/,/,'.').to_f
    params[:customer_company][:respons_payment_late].sub!(/,/,'.').to_f
    params[:customer_company][:respons_undeliver_transport_loading].sub!(/,/,'.').to_f
    params[:customer_company][:respons_transport_late_loading_hours].sub!(/,/,'.').to_f
    params[:customer_company][:respons_transport_late_loading_percent].sub!(/,/,'.').to_f
    params[:customer_company][:respons_transport_late_destination_hours].sub!(/,/,'.').to_f
    params[:customer_company][:response_transport_late_destination_percent].sub!(/,/,'.').to_f
    params[:customer_company][:respons_document_late].sub!(/,/,'.').to_f
  end

end
