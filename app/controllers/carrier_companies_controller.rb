# encoding: UTF-8
class CarrierCompaniesController < ApplicationController
  before_filter :standartise_fields, :only => [:update, :create]

  # GET /carrier_companies
  def index
    @carrier_companies = CarrierCompany.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /carrier_companies/1
  def show
    @carrier_company = CarrierCompany.find(params[:id])
  end

  # GET /carrier_companies/new
  def new
    @carrier_company = CarrierCompany.new
  end

  # GET /carrier_companies/1/edit
  def edit
    @carrier_company = CarrierCompany.find(params[:id])
  end

  # POST /carrier_companies
  def create
    @carrier_company = CarrierCompany.new(params[:carrier_company])
 
    if @carrier_company.save
      redirect_to({:action => 'index'}, {:notice => 'Компания добавлена'}) 
    else
      render :action => "new" 
    end
  end

  # PUT /carrier_companies/1
  def update
    @carrier_company = CarrierCompany.find(params[:id])

    if @carrier_company.update_attributes(params[:carrier_company])
      redirect_to(@carrier_company, :notice => 'Изменения внесены') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /carrier_companies/1
  def destroy
    @carrier_company = CarrierCompany.find(params[:id])
    @carrier_company.destroy

    redirect_to(carrier_companies_url)
  end

  protected

  # Решение проблемы с '.' и ','
  def standartise_fields
    params[:carrier_company][:respons_refuse_loading_day].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_idle_excessively_hours].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_idle_excessively_percent].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_payment_late].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_undeliver_transport_loading].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_transport_late_loading_hours].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_transport_late_loading_percent].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_transport_late_destination_hours].sub!(/,/,'.').to_f
    params[:carrier_company][:response_transport_late_destination_percent].sub!(/,/,'.').to_f
    params[:carrier_company][:respons_document_late].sub!(/,/,'.').to_f
  end

end
