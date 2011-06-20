class CarrierCompaniesController < ApplicationController
  # GET /carrier_companies
  # GET /carrier_companies.xml
  def index
    @carrier_companies = CarrierCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carrier_companies }
    end
  end

  # GET /carrier_companies/1
  # GET /carrier_companies/1.xml
  def show
    @carrier_company = CarrierCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @carrier_company }
    end
  end

  # GET /carrier_companies/new
  # GET /carrier_companies/new.xml
  def new
    @carrier_company = CarrierCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carrier_company }
    end
  end

  # GET /carrier_companies/1/edit
  def edit
    @carrier_company = CarrierCompany.find(params[:id])
  end

  # POST /carrier_companies
  # POST /carrier_companies.xml
  def create
    @carrier_company = CarrierCompany.new(params[:carrier_company])

    respond_to do |format|
      if @carrier_company.save
        format.html { redirect_to(@carrier_company, :notice => 'Carrier company was successfully created.') }
        format.xml  { render :xml => @carrier_company, :status => :created, :location => @carrier_company }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @carrier_company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carrier_companies/1
  # PUT /carrier_companies/1.xml
  def update
    @carrier_company = CarrierCompany.find(params[:id])

    respond_to do |format|
      if @carrier_company.update_attributes(params[:carrier_company])
        format.html { redirect_to(@carrier_company, :notice => 'Carrier company was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @carrier_company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carrier_companies/1
  # DELETE /carrier_companies/1.xml
  def destroy
    @carrier_company = CarrierCompany.find(params[:id])
    @carrier_company.destroy

    respond_to do |format|
      format.html { redirect_to(carrier_companies_url) }
      format.xml  { head :ok }
    end
  end
end
