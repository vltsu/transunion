# encoding: UTF-8
class CargoClassificationsController < ApplicationController
  # GET /cargo_classifications
  def index
    @cargo_classifications = CargoClassification.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /cargo_classifications/1
  def show
    @cargo_classification = CargoClassification.find(params[:id])
  end

  # GET /cargo_classifications/new
  def new
    @cargo_classification = CargoClassification.new
  end

  # GET /cargo_classifications/1/edit
  def edit
    @cargo_classification = CargoClassification.find(params[:id])
  end

  # POST /cargo_classifications
  def create
    @cargo_classification = CargoClassification.new(params[:cargo_classification])
 
    if @cargo_classification.save
      redirect_to({:action => 'index'}, {:notice => 'Классификация груза добавлена'}) 
    else
      render :action => "new" 
    end
  end

  # PUT /cargo_classifications/1
  def update
    @cargo_classification = CargoClassification.find(params[:id])

    if @cargo_classification.update_attributes(params[:cargo_classification])
      redirect_to(@cargo_classification, :notice => 'Изменения внесены') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /cargo_classifications/1
  def destroy
    @cargo_classification = CargoClassification.find(params[:id])
    @cargo_classification.destroy

    redirect_to(cargo_classifications_url)
  end
end
