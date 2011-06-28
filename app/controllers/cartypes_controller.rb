class CartypesController < ApplicationController
  # GET /cartypes
  # GET /cartypes.xml
  def index
    @cartypes = Cartype.paginate :page => params[:page], :order => 'id DESC'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cartypes }
    end
  end

  # GET /cartypes/1
  # GET /cartypes/1.xml
  def show
    @cartype = Cartype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cartype }
    end
  end

  # GET /cartypes/new
  # GET /cartypes/new.xml
  def new
    @cartype = Cartype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cartype }
    end
  end

  # GET /cartypes/1/edit
  def edit
    @cartype = Cartype.find(params[:id])
  end

  # POST /cartypes
  # POST /cartypes.xml
  def create
    @cartype = Cartype.new(params[:cartype])

    respond_to do |format|
      if @cartype.save
        format.html { redirect_to(@cartype, :notice => 'Cartype was successfully created.') }
        format.xml  { render :xml => @cartype, :status => :created, :location => @cartype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cartype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cartypes/1
  # PUT /cartypes/1.xml
  def update
    @cartype = Cartype.find(params[:id])

    respond_to do |format|
      if @cartype.update_attributes(params[:cartype])
        format.html { redirect_to(@cartype, :notice => 'Cartype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cartype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cartypes/1
  # DELETE /cartypes/1.xml
  def destroy
    @cartype = Cartype.find(params[:id])
    @cartype.destroy

    respond_to do |format|
      format.html { redirect_to(cartypes_url) }
      format.xml  { head :ok }
    end
  end
end
