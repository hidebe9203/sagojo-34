class FormsController < ApplicationController
  def new
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile.nil?
      @profile = Profile.new(user_id: current_user.id)
    end
  end

  # def update
  #   @profile = Profile.find_by(user_id: current_user.id)
  #   if @profile.update(profile_params)
  #     redirect_to profile_path(current_user.id)
  #   else
  #     render :new
  #   end
  # end
  # 
  # private
  # def profile_params
  #   params.require(:profile).permit(:background_image, :person_image, :catchphrase, :birth_year, :birth_month, :birth_day, :gender, :phone_number, :current_place, :language_skill, :career, :travel_history, :performance, :expected_income, :preparatory_period, :desired_travel_detail, :self_introduction).merge(user_id: current_user.id)
  # end
end
