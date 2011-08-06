# encoding: UTF-8
class CarsController < AuthorizeController
  before_filter do
    #Передача params в модель
    Car.params = params[:car]
  end

  # GET /cars
  def index
    @cars = Car.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /cars/1
  def show
    @car = Car.find(params[:id])
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
    @car = Car.find(params[:id])
  end

  # POST /cars
  def create
    @car = Car.new(params[:car])

    if @car.save
      redirect_to({:action => 'index'}, {:notice => 'Автомобиль добавлен'})
    else
      render :action => "new"
    end
  end

  # PUT /cars/1
  def update
    @car = Car.find(params[:id])

    if @car.update_attributes(params[:car])
      redirect_to(@car, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /cars/1
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to(cars_url)
  end
end
