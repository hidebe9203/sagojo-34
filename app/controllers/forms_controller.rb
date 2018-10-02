class FormsController < ApplicationController
  def new
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile.nil?
      @profile = Profile.new(user_id: current_user.id)
    end
  end

  def create
  end

  def update
  end

end
