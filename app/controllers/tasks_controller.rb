class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    if @task.completed
      @task_completed = "This task is completed"
    else
      @task_completed = "This task is not completed"
    end
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
    # Will raise ActiveModel::ForbiddenAttributesError
  end

end
