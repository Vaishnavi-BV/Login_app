class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :find_profile, only: [:show, :edit, :update, :destroy]


  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      flash[:notice] = "Profile Saved"
      redirect_to current_user_path
    else
      flash[:alert] = "Error"
      render :new ,status: :unprocessable_entity
    end
  end

  def edit
    @profile = current_user.profile.find(params[:id])
  end

  def update
    @profile = current_user.profile.find(params[:id])
    if @profile.update_attributes(profile_params)
      flash[:notice] = "Successfully Updated Your Profile!"
      redirect_to user_path
    else
      flash[:alert] = "Error"
      render :edit , status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name,:bio,:phone)
  end

end
