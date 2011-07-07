# encoding: UTF-8
class PaymentDocsController < ApplicationController
  # GET /payment_docs
  def index
    @payment_docs = PaymentDoc.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /payment_docs/1
  def show
    @payment_doc = PaymentDoc.find(params[:id])
  end

  # GET /payment_docs/new
  def new
    @payment_doc = PaymentDoc.new
  end

  # GET /payment_docs/1/edit
  def edit
    @payment_doc = PaymentDoc.find(params[:id])
  end

  # POST /payment_docs
  def create
    @payment_doc = PaymentDoc.new(params[:payment_doc])
 
    if @payment_doc.save
      redirect_to({:action => 'index'}, {:notice => 'Документы для оплаты добавлены'}) 
    else
      render :action => "new" 
    end
  end

  # PUT /payment_docs/1
  def update
    @payment_doc = PaymentDoc.find(params[:id])

    if @payment_doc.update_attributes(params[:payment_doc])
      redirect_to(@payment_doc, :notice => 'Изменения внесены') 
    else
      render :action => "edit" 
    end
  end

  # DELETE /payment_docs/1
  def destroy
    @payment_doc = PaymentDoc.find(params[:id])
    @payment_doc.destroy

    redirect_to(payment_docs_url)
  end
end
