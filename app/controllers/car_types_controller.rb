# encoding: UTF-8
class CarTypesController < AuthorizeController
  # GET /car_types
  def index
    @car_types = CarType.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /car_types/1
  def show
    @car_type = CarType.find(params[:id])
  end

  # GET /car_types/new
  def new
    @car_type = CarType.new
  end

  # GET /car_types/1/edit
  def edit
    @car_type = CarType.find(params[:id])
  end

  # POST /car_types
  def create
    @car_type = CarType.new(params[:car_type])

    if @car_type.save
      redirect_to({:action => 'index'}, {:notice => 'Тип ТС добавлен'})
    else
      render :action => "new"
    end
  end

  # PUT /car_types/1
  def update
    @car_type = CarType.find(params[:id])

    if @car_type.update_attributes(params[:car_type])
      redirect_to(@car_type, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /car_types/1
  def destroy
    @car_type = CarType.find(params[:id])
    @car_type.destroy

    redirect_to(car_types_url)
  end
end
