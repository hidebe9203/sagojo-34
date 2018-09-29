class WorksController < ApplicationController

  def index
    # index画面で表示するシゴトを投稿日が新しい順に10件表示
    @works_latest = Work.order("created_at DESC").page(params[:page])

    # 募集締め切りまでの日数を計算
    @works_latest.each do |work_latest|
      @days_left = Work.days_left(work_latest)
    end

  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.create(work_params)
    if @work.save
      redirect_to works_path
    else
      redirect_to new_work_path
    end

  end

  def show
    @work = Work.find(params[:id])
    # 募集締め切りまでの残り日数を算出
    @days_left = Work.days_left(@work)
    # 注目のシゴト用にworksテーブルから最新4件を取得
    @works = Work.page(params[:page]).per(4).order("created_at DESC")
  end

  private

  def work_params
    params.require(:work).permit(:title, :content, :image, :detail, :upper, :under, :condition, :duration, :requierment, :member, :limit).merge(company_id: current_company.id)
  end

end
