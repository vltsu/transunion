# encoding: UTF-8
class DriversController < ApplicationController

  # GET /drivers
  def index
    @drivers = Driver.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /drivers/1
  def show
    @driver = Driver.find(params[:id])
  end

  # GET /drivers/new
  def new
    @driver = Driver.new
  end

  # GET /drivers/1/edit
  def edit
    @driver = Driver.find(params[:id])
  end

  # POST /drivers
  def create
    @driver = Driver.new(params[:driver])

    if @driver.save
      redirect_to({:action => 'index'}, {:notice => 'Водитель добавлен'})
    else
      render :action => "new"
    end
  end

  # PUT /drivers/1
  def update
    @driver = Driver.find(params[:id])

    if @driver.update_attributes(params[:driver])
      redirect_to(@driver, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /drivers/1
  def destroy
    @driver = Driver.find(params[:id])
    @driver.destroy

    redirect_to drivers_url
  end
end
