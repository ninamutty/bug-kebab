class BeetleController < ApplicationController
  def index
    @allbeetles = Beetle.all
  end

  def new
    @beetle = Beetle.new
  end

  def create
    @beetle = Beetle.new

    @beetle.name = params[:beetle][:name]
    @beetle.description = params[:beetle][:description]

    if @beetle.save
      redirect_to root_path
    else
      @error = "Did not save successfully. Try again."
      render :new
    end
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
