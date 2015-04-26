class TasksController < ApplicationController
  def edit
    @task = Task.find(params[:id])
    @project = @task.project
  end

  def update
    @task = Task.find(params[:id])
    @project = @task.project

    if @task.update(project_task_params)
      flash[:notice] = "Task updated."
      redirect_to project_path(@project)
    else
      flash.now = "Task not updated."
      render :edit
    end
  end

  private

  def project_task_params
    params.require(:task).permit(:name, :description, :difficulty_level)
  end
end
