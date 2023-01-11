class ProfilesController < ApplicationController
  def new
     @profile = Profile.new
  end

  def create
     @profile = Profile.new(profile_params)
    if @profile.save
      flash[:notice] = " You Create a Account Successfully!"
      redirect_to @profile
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
     @profile = Profile.find(params[:id])
   end

   def update
    @profile = Profile.find(params[:id])
    if @profile.update
      flash[:notice] = "You Update a Profile Successfully!"
      redirect_to @profile
    else
      render :edit , status: :unprocessable_entity
    end
  end
  
  private

  def profile_params
    params.require(:profile).permit(:firstname,:lastname,:phone,:mail_id,:city,:state,:pincode,:gender,:occupation)
  end
  
end





