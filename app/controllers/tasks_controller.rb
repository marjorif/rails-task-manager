class TasksController < ApplicationController

  def index
    #display all tasks
    @tasks = Task.all
  end

end
