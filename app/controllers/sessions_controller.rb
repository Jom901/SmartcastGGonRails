class SessionsController < ApplicationController
  def new
  	@worker = Worker.new
  end
  def create
  	render 'new'
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      @worker = Worker.new
      redirect_to '/add-personnel'
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
  def destroy
  	log_out if logged_in?
  	redirect_to root_url
  end
end
