class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @incomplete = List.where(complete: false).where(user_id: current_user.id)
    @complete = List.where(complete: true).where(user_id: current_user.id)
  end

  def new
    @list = List.new
    @list.children.build
  end

  def create
    @list = current_user.lists.build(list_params)
    respond_to do |format|
      if @list.save
        format.html { redirect_to lists_path }
        format.js
      end
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    #@list.children.build
  end

  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to lists_path }
        format.js
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to lists_path }
      format.js
      @list.destroy
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :parent_id, :user_id, :complete, children_attributes: [:name, :parent_id, :id, :_destroy])
  end
end
