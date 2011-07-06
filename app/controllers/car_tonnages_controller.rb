# encoding: UTF-8
class CarTonnagesController < ApplicationController
  before_filter do
    #Передача params в модель
    CarTonnage.params = params[:car_tonnage]
  end
  
  # GET /car_tonnages
  def index
    @car_tonnages = CarTonnage.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /car_tonnages/1
  def show
    @car_tonnage = CarTonnage.find(params[:id])
  end

  # GET /car_tonnages/new
  def new
    @car_tonnage = CarTonnage.new
  end

  # GET /car_tonnages/1/edit
  def edit
    @car_tonnage = CarTonnage.find(params[:id])
  end

  # POST /car_tonnages
  def create
    @car_tonnage = CarTonnage.new(params[:car_tonnage])
 
    if @car_tonnage.save
      redirect_to({:action => 'index'}, {:notice => 'Тоннаж добавлен'}) 
    else
      render :action => "new" 
    end
  end

  # PUT /car_tonnages/1
  def update
    @car_tonnage = CarTonnage.find(params[:id])

    if @car_tonnage.update_attributes(params[:car_tonnage])
      redirect_to(@car_tonnage, :notice => 'Изменения внесены') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /car_tonnages/1
  def destroy
    @car_tonnage = CarTonnage.find(params[:id])
    @car_tonnage.destroy

    redirect_to(car_tonnages_url)
  end
end
