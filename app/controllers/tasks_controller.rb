class TasksController < ApplicationController
  # the method that displays all taks must have the name index, it
  # is an important rails convention
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new # "coquille vide, qui servira a acceuillir les donnes du formulaire remplies dans la vue"
  end

  def create
    task = Task.new(task_params)
    if task.title.empty?
      redirect_to new_task_path
    else
      task.save
      redirect_to tasks_path
      # redirect_to task_path(task) # task = prefix
    end
  end

  def destroy
    task_to_destroy = Task.find(params[:id])
    task_to_destroy.destroy
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id]) # on recupere la tache
    @task.update(task_params) # we update with parameters
    redirect_to tasks_path
  end

  private

  def find_task
    Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
