# encoding: UTF-8
class DriversController < ApplicationController
  # GET /drivers
  def index
    @drivers = Driver.paginate :page => params[:page], :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /drivers/1
  def show
    @driver = Driver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /drivers/new
  def new
    @driver = Driver.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /drivers/1/edit
  def edit
    @driver = Driver.find(params[:id])
  end

  # POST /drivers
  def create
    @driver = Driver.new(params[:driver])

    respond_to do |format|
      if @driver.save
        format.html { redirect_to({:action => 'index'}, {:notice => 'Водитель добавлен'}) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /drivers/1
  def update
    @driver = Driver.find(params[:id])

    respond_to do |format|
      if @driver.update_attributes(params[:driver])
        format.html { redirect_to(@driver, :notice => 'Изменения внесены') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /drivers/1
  def destroy
    @driver = Driver.find(params[:id])
    @driver.destroy

    respond_to do |format|
      format.html { redirect_to(drivers_url) }
    end
  end
end
