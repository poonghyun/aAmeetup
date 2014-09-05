class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_credentials(user_params[:name], user_params[:password])

    if @user
      login!(@user)
      redirect_to events_url
    else
      flash[:notices] = ["Invalid name/password combination"]
      @user = User.new(name: user_params[:name])
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
