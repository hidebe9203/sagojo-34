class WorksController < ApplicationController
  def index
    # index画面で表示するシゴトを投稿日が新しい順に10件表示
    @works_latest = Work.page(params[:page]).per(10).order("created_at DESC")
    # 募集締め切りまでの日数を計算
    @works_latest.each do |work_latest|
      @days_left = Work.days_left(work_latest)
    end
    # シゴトテーブルに保存されているシゴトの数
    @works_total = Work.count
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

  def show
    @work = Work.find(params[:id])
    @days_left = Work.days_left(@work)
  end

  private

  def work_params
    params.require(:work).permit(:title, :content, :image, :detail, :upper, :under, :condition, :duration, :requierment, :member, :limit).merge(company_id: current_company.id)
  end

end
