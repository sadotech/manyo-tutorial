class TasksController < ApplicationController
  #binding.pry
  #@task = Task.find(params[:id])
  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    #binding.pry
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

  helper_method :destroy

  def create
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