class TasksController < ApplicationController
  before_action :set_project, only: [:index, :edit, :update]

  def index
    @tasks = @project.tasks
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(project_task_params)
      flash[:notice] = "Task updated."
      redirect_to project_path(@project)
    else
      flash.now = "Task not updated."
      render :edit
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def project_task_params
    params.require(:task).permit(:name, :description, :difficulty_level)
  end
end
