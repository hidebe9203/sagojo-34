class WorksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.create(work_params)
  end

  def show
    @work = Work.find(params[:id])
  end

  private
  def work_params
    params.require(:work).permit(:content)
  end
end
