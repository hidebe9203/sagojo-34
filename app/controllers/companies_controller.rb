class CompaniesController < ApplicationController

  def show
    @company = Company.find(params[:id])
    @works = @company.works.page(params[:page]).per(5).order("created_at DESC").includes(:workstatuses)
  end
end
