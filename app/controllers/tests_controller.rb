class TestsController < ApplicationController
  def index
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.create(test_params)
  end

  def show
    @test = Test.find(params[:id])
  end

  def post
    @test = Test.new
  end

  private
  def test_params
    params.require(:test).permit(:detail, :upper, :under, :condition, :duration, :requirement, :member, :limit, :title, :image, :content)
  end
end
