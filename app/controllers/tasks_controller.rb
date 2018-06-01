class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
    #binding.pry    
  end

  def update
    task = Task.find(params[:id])
    date = {
      year:   task_params["limit_date(1i)"].to_i,
      month:  task_params["limit_date(2i)"].to_i,
      day:    task_params["limit_date(3i)"].to_i,
      hour:   task_params["limit_date(4i)"].to_i,
      minute: task_params["limit_date(5i)"].to_i
      }
    task.update(
      content:    task_params[:content],
      status:     task_params[:status],
      limit_date: DateTime.new(
        date[:year],
        date[:month],
        date[:day],
        date[:hour],
        date[:minute]
        )
      )
      #binding.pry    
    if task.save
      redirect_to task
    else
      render 'update'
    end    
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to index_path
  end

  def create
    date = {
      year:   task_params["limit_date(1i)"].to_i,
      month:  task_params["limit_date(2i)"].to_i,
      day:    task_params["limit_date(3i)"].to_i,
      hour:   task_params["limit_date(4i)"].to_i,
      minute: task_params["limit_date(5i)"].to_i
      }
    task = Task.new(
      content:    task_params[:content],
      status:     task_params[:status],
      limit_date: DateTime.new(
        date[:year],
        date[:month],
        date[:day],
        date[:hour],
        date[:minute]
        )
      )
    #binding.pry
    
    if task.save
      redirect_to task
    else
      render 'new'
    end
  end

  private

    def task_params
      params.require(:task).permit(:content, :status, :limit_date)
      #binding.pry
    end

end