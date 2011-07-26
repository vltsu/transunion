# encoding: UTF-8
class OutcomeSectionsController < ApplicationController
  # GET /outcome_sections
  def index
    @outcome_sections = OutcomeSection.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /outcome_sections/1
  def show
    @outcome_section = OutcomeSection.find(params[:id])
  end

  # GET /outcome_sections/new
  def new
    @outcome_section = OutcomeSection.new
  end

  # GET /outcome_sections/1/edit
  def edit
    @outcome_section = OutcomeSection.find(params[:id])
  end

  # POST /outcome_sections
  def create
    @outcome_section = OutcomeSection.new(params[:outcome_section])

    if @outcome_section.save
      redirect_to({:action => 'index'}, {:notice => 'Статья расходов добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /outcome_sections/1
  def update
    @outcome_section = OutcomeSection.find(params[:id])

    if @outcome_section.update_attributes(params[:outcome_section])
      redirect_to(@outcome_section, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /outcome_sections/1
  def destroy
    @outcome_section = OutcomeSection.find(params[:id])
    @outcome_section.destroy

    redirect_to(outcome_sections_url)
  end
end
