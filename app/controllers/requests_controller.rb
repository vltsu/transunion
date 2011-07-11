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
    @request.loading_points.build
    @request.unloading_points.build
  end
  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  def create
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
