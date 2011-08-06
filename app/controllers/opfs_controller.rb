# encoding: UTF-8
class OpfsController < AuthorizeController
  # GET /opfs
  def index
    @opfs = Opf.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /opfs/1
  def show
    @opf = Opf.find(params[:id])
  end

  # GET /opfs/new
  def new
    @opf = Opf.new
  end

  # GET /opfs/1/edit
  def edit
    @opf = Opf.find(params[:id])
  end

  # POST /opfs
  def create
    @opf = Opf.new(params[:opf])

    if @opf.save
      redirect_to({:action => 'index'}, {:notice => 'ОПФ добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /opfs/1
  def update
    @opf = Opf.find(params[:id])

    if @opf.update_attributes(params[:opf])
      redirect_to(@opf, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /opfs/1
  def destroy
    @opf = Opf.find(params[:id])
    @opf.destroy

    redirect_to(opfs_url)
  end
end
