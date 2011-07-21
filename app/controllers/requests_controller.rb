# encoding: UTF-8
class RequestsController < ApplicationController

  before_filter do
    #Передача params в модель
    #для решения проблемы с ,/. в дробных числах
    Request.params = params[:request]
  end

  # GET /requests
  def index
    @requests = Request.paginate :page => params[:page], :order => 'id DESC'
  end


  # GET /requests/1
  def show
    @request = Request.find(params[:id])

    #извлечение "постоянных" первых точек погрузки и разгрузки
    @lp = @request.loading_points.find(:first, :conditions => 'point_number = 1')
    @up = @request.unloading_points.find(:first, :conditions => 'point_number = 1')

    #получение всех остальных точек погрузки и разгрузки
    (2..9).each do |num|
      instance_variable_set( "@lp#{num}".to_sym, @request.loading_points.find(:first, :conditions => "point_number = #{num}") )
      instance_variable_set( "@up#{num}".to_sym, @request.unloading_points.find(:first, :conditions => "point_number = #{num}") )
    end
  end

  # GET /requests/new
  def new
    @request = Request.new

    #Создание 9 пустых связанных с заявкой точек погрузки и разгрузки
    #для формирования формы
    9.times  do
      @request.loading_points.build
      @request.unloading_points.build
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])

    #извлечение "постоянных" первых точек погрузки и разгрузки
    @lp = @request.loading_points.find(:first, :conditions => 'point_number = 1')
    @up = @request.unloading_points.find(:first, :conditions => 'point_number = 1')

    #получение всех остальных точек погрузки и разгрузки
    (2..9).each do |num|
      instance_variable_set( "@lp#{num}".to_sym, @request.loading_points.find(:first, :conditions => "point_number = #{num}") )
      instance_variable_set( "@up#{num}".to_sym, @request.unloading_points.find(:first, :conditions => "point_number = #{num}") )
    end
  end

  # POST /requests
  def create

    #Присваивание номеров точкам погрузки/разгрузки
    (0..9).each do |num|
       if params[:request]['loading_points_attributes']["#{num}".to_sym]
         num == 0 ?  number = 1 : number = num
         params[:request]['loading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
         params[:request]['unloading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
       end
    end

    @request = Request.new(params[:request])

    if @request.save
      redirect_to({:action => 'index'}, {:notice => 'Заявка добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /requests/1
  def update
    @request = Request.find(params[:id])

    #Удаление всех связанных с заявкой точек погрузки
    loading_points = @request.loading_points
    loading_points.each do |lp|
      lp.destroy
    end

    #Удаление всех связанных с заявкой точек разгрузки
    unloading_points = @request.unloading_points
    unloading_points.each do |up|
      up.destroy
    end

    #Присвоение точкам погрузки\разгрузки порядковых номеров
    #в соответствии с номером формы
    (0..9).each do |num|
       if params[:request]['loading_points_attributes']["#{num}".to_sym]
         num == 0 ?  number = 1 : number = num
         params[:request]['loading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
         params[:request]['unloading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
       end
    end

    if @request.update_attributes(params[:request])
      redirect_to(@request, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /requests/1
  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to(requests_url)
  end
end
