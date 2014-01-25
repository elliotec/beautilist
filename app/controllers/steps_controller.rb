class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :_destroy]
  before_action :list

  def show
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def create
    @step = Step.new(step_params)
  end

  def update
    if @step.update(step_params)
      redirect_to list_step_path
    end
  end

  def destroy
    @step.destroy
  end

  private
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:text)
    end
end
