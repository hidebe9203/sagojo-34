class WorksController < ApplicationController
  def index
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
    params.require(:work).permit(:detail, :upper, :under, :condition, :duration, :requierement, :member, :limit, :title, :image, :content)
  end
end
