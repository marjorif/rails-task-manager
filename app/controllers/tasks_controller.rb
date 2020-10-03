class TasksController < ApplicationController

  def index
    #display all tasks
    @tasks = Task.all
  end

  def detail
    @task = Task.find(params[:id])
  end

end
