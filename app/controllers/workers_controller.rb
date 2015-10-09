class WorkersController < ApplicationController
  def index
  	@worker = Worker.all
  end
  def show
  	@worker = Worker.all
  end
end
