class WorkersController < ApplicationController
  #   before_action :require_login
  # skip_before_action :require_login, :except => [:edit,:new] 


  
  def index
  	@worker = Worker.all
  end
  def show
  	@worker = Worker.all
  end
  def new
  	if logged_in?
  		@worker = Worker.new
  	else
  		redirect_to '/home'
  	end
  end
  def create
    @worker = Worker.new(worker_params)    # Not the final implementation!
    if @worker.save
      redirect_to '/personnel' # Handle a successful save.
    else
      render 'new'
  	end
  end
  def edit
    @worker = Worker.find(params[:id])
  end
	#Private functions that allow extra functionalities.  
   private
   	def worker_params
  	 	params.require(:worker).permit(:name, :email, :avatar,:bio, :role, :twitter)
  	end
  def require_login
    unless current_user
      redirect_to '/home'
  end

end
end