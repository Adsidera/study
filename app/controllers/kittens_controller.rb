class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json { render json: @kittens }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = "Congratulations! You have added a new kitten"
      redirect_to kittens_path
    else
      flash[:notice] = "Oh no! You cant add that kitten!"
    end
  end

  def update
    if @kitten.update(kitten_params)
      flash[:notice] = "Congratulations! You have updated your kitten"
    else
      flash[:notice] = "Oh no! You cant edit that kitten!"
    end
  end

  def edit
  end

  def show
  end

  def destroy
    if @kitten.destroy
      flash[:notice] = "You have deleted a kitten"
      redirect_to root_path
    end
  end
  
  private

    def kitten_params
      params.require(:kitten).permit(:name, :age, :softness, :cuteness)
    end

    def set_kitten
      @kitten = Kitten.find(params[:id])
    end
end
