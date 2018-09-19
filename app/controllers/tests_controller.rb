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

  private
  def test_params
    params.require(:test).permit(:title, :image, :content)
  end
end
