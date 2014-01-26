class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path
    end
  end

  def destroy
    if @list.destroy
      redirect_to lists_path
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, steps_attributes: [:text, :id, :_destroy])
  end
end
