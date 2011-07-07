# encoding: UTF-8
class PaymentMethodsController < ApplicationController
  # GET /payment_methods
  def index
    @payment_methods = PaymentMethod.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /payment_methods/1
  def show
    @payment_method = PaymentMethod.find(params[:id])
  end

  # GET /payment_methods/new
  def new
    @payment_method = PaymentMethod.new
  end

  # GET /payment_methods/1/edit
  def edit
    @payment_method = PaymentMethod.find(params[:id])
  end

  # POST /payment_methods
  def create
    @payment_method = PaymentMethod.new(params[:payment_method])
 
    if @payment_method.save
      redirect_to({:action => 'index'}, {:notice => 'Метод оплаты добавлен'}) 
    else
      render :action => "new" 
    end
  end

  # PUT /payment_methods/1
  def update
    @payment_method = PaymentMethod.find(params[:id])

    if @payment_method.update_attributes(params[:payment_method])
      redirect_to(@payment_method, :notice => 'Изменения внесены') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /payment_methods/1
  def destroy
    @payment_method = PaymentMethod.find(params[:id])
    @payment_method.destroy

    redirect_to(payment_methods_url)
  end
end
