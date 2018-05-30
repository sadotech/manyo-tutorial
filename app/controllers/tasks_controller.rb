class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def list
    @task = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    binding.pry
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  private

    def task_params
      params.require(:task).permit(:content)
    end

end