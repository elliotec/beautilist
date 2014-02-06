class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    #@lists = List.all.where(parent_id: nil)
    #@children = @list('lft ASC')
    @incomplete = List.where(complete: false).where(depth: 0)
    @complete = List.where(complete: true)
  end

  def new
    @list = List.new
    @list.children.build
  end

  def create
    @list = List.new(list_params)
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
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_path }
      format.js
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :parent_id, :complete, children_attributes: [:name, :parent_id, :id, :_destroy])
  end
end
