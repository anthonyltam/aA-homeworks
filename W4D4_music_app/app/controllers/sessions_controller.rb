class SessionsController < ApplicationController

  # login, new session
  def new
    render :new
  end
  #creates new session
  def create
    p 'logging in!'
    @user = User.find_by_credentials(params[:user][:email],
    params[:user][:password])

    if @user
      login!(@user)
      redirect_to user_url(@user)
    else
      p 'here'
      flash[:errors] = ['invalid login info']
      render :new
    end
  end

  #logout
  def destroy
    logout!
    # current_user = nil
    p 'logged out'
    render :new
  end
end
