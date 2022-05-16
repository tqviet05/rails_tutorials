class SessionsController < ApplicationController
  def new; end

  # Tao dang nhap
  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me].to_i.zero? ? forget(user): remember(user)
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  # Thoat dang nhap
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
