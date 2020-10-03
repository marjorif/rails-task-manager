class TasksController < ApplicationController

  def index
    #display all tasks
    @tasks = Task.all
  end

  def detail
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def add
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @taks = @task = Task.find(params[:id])
  end

  def update
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
