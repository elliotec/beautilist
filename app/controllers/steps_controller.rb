class StepsController < ApplicationController
  before_action :set_step

  def show
  end

  def edit
  end

  def update
    if @step.update(step_params)
      redirect_to step_path
    end
  end

  def destroy
    @step.destroy
  end

private

  def step_params
    params.require(:step).permit(:text)
  end

  def set_step
    @step = Step.find(params[:id])
  end

end
