# encoding: UTF-8
class RequestsController < ApplicationController
  # GET /requests
  def index
    @requests = Request.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /requests/1
  def show
    @request = Request.find(params[:id])
  end

  # GET /requests/new
  def new
    @request = Request.new
    9.times  do
      @request.loading_points.build
      @request.unloading_points.build
    end
  end
  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
    @lp1 = @request.loading_points.new
    @up1 = @request.unloading_points.new
  end

  # POST /requests
  def create

    #Присваивание номеров точкам погрузки/разгрузки
    (0..8).each do |num|
       if params[:request]['loading_points_attributes']["#{num}".to_sym]
         num == 0 ?  number = 1 : number = num
         params[:request]['loading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
         params[:request]['unloading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
       end
    end

#    params[:clean_request] = params[:request].reject{|k,v|( k == "loading_point1" || k == "unloading_point1" ) }

    @request = Request.new(params[:request])
#    @request.loading_points << LoadingPoint.create(params[:request][:loading_point1])
#    @request.unloading_points << UnloadingPoint.create(params[:request][:unloading_point1])

#    (2..9).each do |num|
#      lp_params = params[:request]["loading_point#{num}"]
#      if lp_params  && lp_params['address']
#        lp_params[:point_number] = num
#        lp = @request.loading_point.new(lp_params)
#        lp.save
#      end
#
#      if params[:request]['unloading_point#{num}'] && params[:request]['unloading_point#{num}']['address']
#        up = @request.unloading_point.new(params[:request]['unloading_point#{num}'])
#        up.save
#      end
#    end

    if @request.save
      redirect_to({:action => 'index'}, {:notice => 'Заявка добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /requests/1
  def update
    @request = Request.find(params[:id])

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
