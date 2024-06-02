class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render :index
  end

  def create
    @dog = Dog.create(
      name: params[:name],
      size: params[:size],
      origin: params[:origin],
    )
    render :show
  end
end
