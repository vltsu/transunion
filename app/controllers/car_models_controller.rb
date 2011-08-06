# encoding: UTF-8
class CarModelsController < AuthorizeController
  # GET /car_models
  def index
    @car_models = CarModel.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /car_models/1
  def show
    @car_model = CarModel.find(params[:id])
  end

  # GET /car_models/new
  def new
    @car_model = CarModel.new
  end

  # GET /car_models/1/edit
  def edit
    @car_model = CarModel.find(params[:id])
  end

  # POST /car_models
  def create
    @car_model = CarModel.new(params[:car_model])

    if @car_model.save
      redirect_to({:action => 'index'}, {:notice => 'Модель ТС добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /car_models/1
  def update
    @car_model = CarModel.find(params[:id])

    if @car_model.update_attributes(params[:car_model])
      redirect_to(@car_model, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /car_models/1
  def destroy
    @car_model = CarModel.find(params[:id])
    @car_model.destroy

    redirect_to(car_models_url)
  end
end
