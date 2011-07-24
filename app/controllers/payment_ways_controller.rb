# encoding: UTF-8
class PaymentWaysController < ApplicationController
  # GET /payment_ways
  def index
    @payment_ways = PaymentWay.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /payment_ways/1
  def show
    @payment_way = PaymentWay.find(params[:id])
  end

  # GET /payment_ways/new
  def new
    @payment_way = PaymentWay.new
  end

  # GET /payment_ways/1/edit
  def edit
    @payment_way = PaymentWay.find(params[:id])
  end

  # POST /payment_ways
  def create
    @payment_way = PaymentWay.new(params[:payment_way])

    if @payment_way.save
      redirect_to({:action => 'index'}, {:notice => 'Способ оплаты добавлен'})
    else
      render :action => "new"
    end
  end

  # PUT /payment_ways/1
  def update
    @payment_way = PaymentWay.find(params[:id])

    if @payment_way.update_attributes(params[:payment_way])
      redirect_to(@payment_way, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /payment_ways/1
  def destroy
    @payment_way = PaymentWay.find(params[:id])
    @payment_way.destroy

    redirect_to(payment_ways_url)
  end
end
