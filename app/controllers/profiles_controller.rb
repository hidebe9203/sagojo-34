class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find_by(user_id: 1)
    if @profile.blank?
      @profile = Profile.new()
    end
  end

  def create

  end

  def update
    binding.pry
  end

  private
  # def profile_params
  #   params.require(:profile).permit(:catchphrase, :year, :month, :day, :gender).merge(user_id: current_user.id)
  # end
end
