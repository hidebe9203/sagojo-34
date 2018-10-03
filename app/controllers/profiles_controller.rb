class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit]

  def show
  end

  def edit
    if @profile.nil?
      @profile = Profile.new(user_id: current_user.id)
    end
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      if params[:applyId] == "apply"
        workstatus = Workstatus.where('user_id = ? and work_id = ?', params[:user_id], params[:work_id])
        if workstatus.present?
          Workstatus.update(workstatus_params)
          redirect_to workstatuses_path
        else
          Workstatus.create(workstatus_params)
          redirect_to workstatuses_path
        end
      else
        redirect_to profile_path(current_user.id)
      end
    else
      render :edit
    end
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      if params[:applyId] == "apply"
        workstatus = Workstatus.where('user_id = ? and work_id = ?', params[:user_id], params[:work_id])
        if workstatus.present?
          Workstatus.update(workstatus_params)
          redirect_to workstatuses_path
        else
          Workstatus.create(workstatus_params)
          redirect_to workstatuses_path
        end
      else
        redirect_to profile_path(current_user.id)
      end
    else
      render :edit
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:background_image, :person_image, :catchphrase, :birth_year, :birth_month, :birth_day, :gender, :phone_number, :current_place, :language_skill, :career, :travel_history, :performance, :expected_income, :preparatory_period, :desired_travel_detail, :self_introduction).merge(user_id: current_user.id)
  end

  def workstatus_params
    params.permit(:user_id, :work_id).merge(status: 0)
  end

  def set_profile
    @profile = Profile.find_by(user_id: params[:id])
  end
end
