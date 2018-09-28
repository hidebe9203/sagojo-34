class UsersController < ApplicationController
  def edit
    @profile = Profile.new
  end

  def create
  end

  def update
    binding.pry
  end
end
