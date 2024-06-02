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

  def show
    @dog = Dog.find_by(id: params[:id])
    render :show
  end

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.update(
      name:params[:name] || @dog.name,
      size:params[:size] || @dog.size,
      origin:params[:origin] || @dog.origin,
    )
    render :show
  end
end
