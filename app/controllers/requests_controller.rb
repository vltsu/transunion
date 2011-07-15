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
  end
  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  def create

    @request = Request.new(params[:request])

    (1..9).each do |num|
      lp_params = params[:request]["loading_point#{num}"]
      if lp_params  && lp_params['address']
        lp_params[:point_number] = num
        lp = @request.loading_point.new(lp_params)
        lp.save
      end

      if params[:request]['unloading_point#{num}'] && params[:request]['unloading_point#{num}']['address']
        up = @request.unloading_point.new(params[:request]['unloading_point#{num}'])
        up.save
      end

      params[:request].delete("loading_point#{num}".to_sym)
      params[:request].delete("unloading_point#{num}".to_sym)
    end

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
