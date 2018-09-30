class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find_by(user_id: params[:id])
    if @profile.nil?
      @profile = Profile.new()
    end
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:background_image, :person_image, :catchphrase, :birth_year, :birth_month, :birth_day, :gender, :phone_number, :current_place, :language_skill, :career, :travel_history, :performance, :expected_income, :preparatory_period, :desired_travel_detail, :self_introduction).merge(user_id: current_user.id)
  end
end
