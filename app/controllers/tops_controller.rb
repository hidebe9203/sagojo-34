class TopsController < ApplicationController

  def index
    @works = Work.page(params[:page]).per(6).order("created_at DESC")

    # スライドショーに表示するシゴト
    @slides = Work.limit(3).order('created_at DESC')

  end
end
