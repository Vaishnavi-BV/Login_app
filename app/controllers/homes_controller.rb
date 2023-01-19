class HomesController < ApplicationController

  def cards
  end

  def non_fiction
  end
  
  def main
    @users = Home.all
  end
  def index
    @users = Home.all
  end

  def show
    @user = Home.find(params[:id])
  end

  def new
    @user = Home.new
  end

  def create
    @user = Home.new(user_params)
    if @user.save
      redirect_to @user
      flash[:notice] = "You Created a User Details Successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = Home.find(params[:id])
  end

  def update
    @user = Home.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
      flash[:notice] = "You Updated a User Details Successfully!"
    else
      render :edit ,status: :unprocessable_entity
    end
  end

  def destroy
    @user = Home.find(params[:id])
    @user.destroy
    redirect_to 'root_path' ,status: :see_other
  end

  private
  def user_params
    params.require(:home).permit(:name,:age,:address,:phone)
  end

  
end
