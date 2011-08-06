# encoding: UTF-8
class IncomeSectionsController < AuthorizeController
  # GET /income_sections
  def index
    @income_sections = IncomeSection.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /income_sections/1
  def show
    @income_section = IncomeSection.find(params[:id])
  end

  # GET /income_sections/new
  def new
    @income_section = IncomeSection.new
  end

  # GET /income_sections/1/edit
  def edit
    @income_section = IncomeSection.find(params[:id])
  end

  # POST /income_sections
  def create
    @income_section = IncomeSection.new(params[:income_section])

    if @income_section.save
      redirect_to({:action => 'index'}, {:notice => 'Статья приходов добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /income_sections/1
  def update
    @income_section = IncomeSection.find(params[:id])

    if @income_section.update_attributes(params[:income_section])
      redirect_to(@income_section, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /income_sections/1
  def destroy
    @income_section = IncomeSection.find(params[:id])
    @income_section.destroy

    redirect_to(income_sections_url)
  end
end
