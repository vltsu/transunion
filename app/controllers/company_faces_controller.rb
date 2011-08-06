# encoding: UTF-8
class CompanyFacesController < AuthorizeController
  # GET /company_faces
  def index
    @company_faces = CompanyFace.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /company_faces/1
  def show
    @company_face = CompanyFace.find(params[:id])
  end

  # GET /company_faces/new
  def new
    @company_face = CompanyFace.new
  end

  # GET /company_faces/1/edit
  def edit
    @company_face = CompanyFace.find(params[:id])
  end

  # POST /company_faces
  def create
    @company_face = CompanyFace.new(params[:company_face])

    if @company_face.save
      redirect_to({:action => 'index'}, {:notice => 'Компания в лице добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /company_faces/1
  def update
    @company_face = CompanyFace.find(params[:id])

    if @company_face.update_attributes(params[:company_face])
      redirect_to(@company_face, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /company_faces/1
  def destroy
    @company_face = CompanyFace.find(params[:id])
    @company_face.destroy

    redirect_to(company_faces_url)
  end
end
