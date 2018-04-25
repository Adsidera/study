class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end
  
  private

    def set_kitten
      @kitten = Kitten.find(params[:id])
    end
end
