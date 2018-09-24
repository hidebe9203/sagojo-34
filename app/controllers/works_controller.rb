class WorksController < ApplicationController
  def index
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.create(work_params)
    if @work.save
      render :index
    else
      render :new
    end

  end

  # def show
  #   @work = Work.find(params[:id])
  # end

  private

  def work_params
    params.require(:work).permit(:title, :content, :image, :detail, :upper, :under, :condition, :duration, :requierment, :member, :limit).merge(company_id: current_company.id)
  end
  
end
